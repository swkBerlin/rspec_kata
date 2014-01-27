require "./lib/store"
require "test/unit"

class StoreTest < Test::Unit::TestCase


  # these are two examples how you can mock methods to refactor this example
  # backend.should_receive(:write).with("---\n- 1\n- 2\n- 3\n")
  # let(:backend) { double(:backend, :read => data) }

  def test_store_data
    store = Store.new
    store.write([1, 2, 3])
    assert File.exists?(FileStore::DATA_FILE)
    assert_equal [1, 2, 3], store.read
    store.reset
  end
end

