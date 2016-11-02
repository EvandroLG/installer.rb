require_relative 'colorize'
require_relative 'brew'

module Node
  NODE_FILE = '/usr/local/bin/node'

  def self.install
    Brew.install
    Brew.update

    unless File.file? NODE_FILE
      system 'brew install node'
      return
    end

    puts red('node has already been installed!')
  end
end
