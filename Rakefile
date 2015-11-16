require 'rubygems'
require 'rake'

task :console do
  require 'irb'
  require 'irb/completion'
  require './lib/bill'
  ARGV.clear
  IRB.start
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.libs << "test"
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end