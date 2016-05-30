lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'deranged/version'

Gem::Specification.new do |s|
  s.name = 'deranged'
  s.version = Deranged::VERSION
  s.summary = 'A natuaral language range parser and model helper'
  s.description = 'Makes it easy to convert strings to ranges and use them in your forms'
  s.files = Dir['README.*', 'MIT-LICENSE', 'lib/**/*.rb']
  s.require_path = 'lib'
  s.author = 'Adam Crownoble'
  s.email = 'adam@codenoble.com'
  s.homepage = 'https://github.com/codenoble/deranged'
  s.license = 'MIT'
end
