require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

Cucumber::Rake::Task.new(:wip) do |t|
  t.profile = 'default'
  t.cucumber_opts = "--format pretty --tags @wip"
end

task :default => :features
