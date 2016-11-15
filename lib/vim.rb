require_relative 'users'
require_relative 'colorize'

module Vim
  VUNDLE_DIRECTORY = '/Users/admin/.vim/bundle/Vundle.vim'
  VUNDLE_GIT       = 'https://github.com/VundleVim/Vundle.vim.git'

  def self.install_vundle
    unless File.directory? VUNDLE_DIRECTORY
      system "git clone #{VUNDLE_GIT} #{VUNDLE_DIRECTORY}"
      Users.create_bash_profile
      puts "\nvundle was installed! You just need to install the plugins now [ " + green('`vim_plugin_install`') + " ]"
      return
    end

    puts red('vundle has already been installed!')
  end
end
