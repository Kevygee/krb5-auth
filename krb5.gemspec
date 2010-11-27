# -*- encoding: utf-8 -*-
require File.expand_path('../lib/krb5/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'krb5'
  s.version = Krb5::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = 'Kerberos binding for Ruby'
  s.homepage = 'http://github.com/dvyjones/krb5'
  s.email = 'dvyjones@binaryhex.com'
  s.authors = [ 'Henrik Hodne', 'Chris Lalancette' ]

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
  
  s.extensions << 'ext/extconf.rb'
  
  s.add_development_dependency 'bundler', '>= 1.0.0'
end
