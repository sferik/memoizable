require 'bundler'
require 'rspec/core/rake_task'
require 'yard'
require 'yardstick/rake/measurement'
require 'yardstick/rake/verify'

Bundler::GemHelper.install_tasks
RSpec::Core::RakeTask.new(:spec)

YARD::Rake::YardocTask.new(:yard)

Yardstick::Rake::Measurement.new(:yardstick)

Yardstick::Rake::Verify.new(:verify_measurements) do |verify|
  verify.threshold = 100
end

task :test    => :spec
task :default => :spec
