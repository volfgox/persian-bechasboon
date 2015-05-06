$:.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'persian-bechasboon/version'

Gem::Specification.new do |s|
  s.name        = 'persian-bechasboon'
  s.version     = PersianBechasboon::VERSION
  s.date        = '2015-05-06'
  s.summary     = 'Persian Characters Connector (Bechasboon)'
  s.description = 'A tool to replace generic disconnected Persian letters with their connected counterparts, for the Ruby programming language.'
  s.authors     = ["Hazhir Derakhshi"]
  s.email       = 'hajear@gmail.com'
  s.homepage    = 'https://github.com/volfgox/persian-bechasboon'

  s.files       = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end