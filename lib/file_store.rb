class FileStore
  DATA_FILE = 'reservations.txt'

  def initialize(filename = nil)
    @filename = filename || DATA_FILE
  end

  def read
    File.read(@filename)
  rescue Errno::ENOENT
    nil
  end

  def write(data)
    File.open(@filename, "w") do |f|
      f.write(data)
    end
  end

  def reset
    if File.exists?(@filename)
      File.delete(@filename)
    end
  end
end
