require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('commentem', '1.0.0') do |p|
  p.description     = "A generic commenting system."
  p.url             = "http://github.com/peterwongpp/commentem"
  p.author          = "Peter Wong"
  p.email           = "peter@peterwongpp.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.take"].sort.each { |ext| load ext }