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

ARGV.each do |arg|
  case arg
    when '--all' then all
    when '--vim'  then Vim.install_vundle
    when '--node' then Node.install
    when '--ruby' then Ruby.install_rvm
    when '--git'  then Git.download_files
  end
end
