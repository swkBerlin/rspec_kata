require "./lib/file_store"

describe FileStore do
  let(:file_store) { FileStore.new }
  let(:data_file) { FileStore::DATA_FILE}
  let(:data) { "dummy data" }

  before do
    file_store.reset
  end

  after(:all) do
    file_store.reset
  end

  describe "#read" do
    subject { file_store.read }

    it "returns nil" do
      subject.should be_nil
    end

    context "data_file exists" do
      before do
        File.open(data_file, "w") { |f| f.write(data) }
      end

      it "returns the stored data" do
        subject.should == data
      end
    end
  end

  describe "#write" do
    subject { file_store.write(data) }

    it "creates the data_file" do
      subject
      File.exists?(data_file).should be_true
    end

    it "stores the data into data_file" do
      subject
      File.read(data_file).should == data
    end
  end
end
