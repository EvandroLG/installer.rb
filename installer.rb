#!/usr/bin/env ruby

def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end

module Users
  BASH_PROFILE = '/Users/admin/.bash_profile'
  BASH_PROFILE_GIT = 'https://raw.githubusercontent.com/EvandroLG/dotfiles/master/.bash_profile'

  def self.create_bash_profile
    unless File.file? BASH_PROFILE
    system "#{BASH_PROFILE_GIT} > #{BASH_PROFILE}"
    end
  end
end

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

if ARGV[0] == '--vim'
  Vim.install_vundle
end
