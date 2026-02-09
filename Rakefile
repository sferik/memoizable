# frozen_string_literal: true

require "bundler"
require "rspec/core/rake_task"
require "rubocop/rake_task"
require "standard/rake"
require "yard"
require "yardstick/rake/measurement"
require "yardstick/rake/verify"

Bundler::GemHelper.install_tasks
RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop)

YARD::Rake::YardocTask.new(:yard)

Yardstick::Rake::Measurement.new(:yardstick)

Yardstick::Rake::Verify.new(:verify_measurements) do |verify|
  verify.threshold = 100
end

desc "Run RuboCop and Standard Ruby"
task lint: %i[rubocop standard]

desc "Run RSpec"
task test: :spec

task default: :spec
