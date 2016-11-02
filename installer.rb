#!/usr/bin/env ruby

require_relative 'vim'
require_relative 'node'
require_relative 'ruby'
require_relative 'git'

ARGV.each do |arg|
  case arg
    when '--vim'  then Vim.install_vundle
    when '--node' then Node.install
    when '--ruby' then Ruby.install_rvm
    when '--git'  then Git.download_files
  end
end
