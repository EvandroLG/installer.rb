require_relative 'output'
require_relative 'colorize'

module Ruby
  RVM_FILE = '/Users/admin/.rvm/bin/rvm'

  def self.install_rvm
    Output.do RVM_FILE, 'curl -sSL https://get.rvm.io | bash -s stable', 'rvm'
  end
end
