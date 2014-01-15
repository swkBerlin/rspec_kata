require "./lib/store"

describe Store do
  let(:store) { Store.new(backend) }

  describe "#write" do
    subject { store.write(data) }

    let(:data) { [1, 2, 3] }
    let(:backend) { double(:backend) }

    it "stores the data" do
      backend.should_receive(:write).with("---\n- 1\n- 2\n- 3\n")
      subject
    end
  end
end

describe "Integration" do
  subject(:store) { Store.new }

  let(:data) { [1,2,3,4] }

  after do
    store.reset
  end

  it "returns the input data" do
    subject.write(data)

    subject.read.should == data
  end
end
