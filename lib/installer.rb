#!/usr/bin/env ruby

require_relative 'vim'
require_relative 'node'
require_relative 'ruby'
require_relative 'git'

def all
  Vim.install_vundle
  Node.install
  Ruby.install_rvm
  Git.download_files
end

if ARGV.empty? || ARGV[0] == '--help'
  puts %{
    Options:
    --all   install every program
    --vim   install just vim
    --node  install just node programs
    --ruby  install just ruby programs
    --git   install just git
  }

  exit
end

all; exit if ARGV[0] == '--all'

ARGV.each do |arg|
  case arg
    when '--vim'  then Vim.install_vundle
    when '--node' then Node.install
    when '--ruby' then Ruby.install_rvm
    when '--git'  then Git.download_files
  end
end
