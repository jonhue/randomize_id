require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

system 'bundle'
system 'gem build randomize_id.gemspec'


RSpec::Core::RakeTask.new

task default: :spec
