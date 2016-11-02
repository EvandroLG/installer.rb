#!/usr/bin/env ruby

require_relative 'vim'
require_relative 'node'

ARGV.each do |arg|
  case arg
    when '--vim'  then Vim.install_vundle
    when '--node' then Node.install
    when '--ruby' then Ruby.install_rvm
  end
end
