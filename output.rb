require_relative 'colorize'

module Output
  def self.do(path, message, filename)
    unless File.file? path
      system message
      return
    end

    puts red("#{filename} file has already been downloaded!")
  end
end
