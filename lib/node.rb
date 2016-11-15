require_relative 'output'
require_relative 'colorize'
require_relative 'brew'

module Node
  NODE_FILE = '/usr/local/bin/node'

  def self.install
    Brew.install
    Brew.update

    Output.do NODE_FILE, 'brew install node', 'node'
  end
end
