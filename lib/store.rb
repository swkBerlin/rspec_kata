require 'yaml'
require File.expand_path(File.dirname(__FILE__) + '/file_store')

class Store

  def initialize(backend = nil)
    @backend = backend || FileStore.new
  end

  def read
    if data = @backend.read
      YAML::load data
    else
      []
    end
  end

  def write(data)
    @backend.write(YAML::dump(data))
  end

  def reset
    @backend.reset
  end
end
