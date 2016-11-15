require_relative 'output'
require_relative 'colorize'
require_relative 'users'

module Git
  GITCONFIG_FILE     = '/Users/admin/.gitconfig'
  GITIGNORE_FILE     = '/Users/admin/.gitignore'
  GITCOMPLETION_FILE = '/Users/admin/.git-completion.sh'
  GITCONFIG_GIT      = 'https://raw.githubusercontent.com/EvandroLG/dotfiles/master/git/.gitconfig'
  GITIGNORE_GIT      = 'https://raw.githubusercontent.com/EvandroLG/dotfiles/master/git/.gitignore'
  GITCOMPLETION_GIT  = 'https://raw.githubusercontent.com/EvandroLG/dotfiles/master/git/.git-completion.sh'

  def self.download_gitignore
    Output.do GITIGNORE_FILE, "curl #{GITIGNORE_GIT} > #{GITIGNORE_FILE}", '.gitignore'
  end

  def self.download_gitconfig
    Output.do GITCONFIG_FILE, "curl #{GITCONFIG_GIT} > #{GITCONFIG_FILE}", '.gitconfig'
  end

  def self.download_gitcompletion
    unless File.file? GITCOMPLETION_FILE
      Users.create_bash_profile
      system "curl #{GITCOMPLETION_GIT} > #{GITCOMPLETION_FILE}"
      Users.reload_bash_profile
      return
    end

    puts red('.gitcompletion.sh has already been downloaded!')
  end

  def self.download_files
    download_gitignore
    download_gitconfig
    download_gitcompletion
  end
end
