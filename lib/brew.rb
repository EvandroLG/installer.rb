module Brew
  BREW_FILE = '/usr/local/bin/brew'

  def self.install
    unless File.file? BREW_FILE
      system '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
    end
  end

  def self.update
    system 'brew update'
  end
end
