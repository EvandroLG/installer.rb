require_relative 'colorize'

module Ruby
  RVM_FILE = '/Users/admin/.rvm/bin/rvm'

  def self.install_rvm
    unless File.file? RVM_FILE
      system 'curl -sSL https://get.rvm.io | bash -s stable'
    end

    puts red('rvm has already been installed!')
  end
end
