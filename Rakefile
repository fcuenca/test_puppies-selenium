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

task :bundler do
  sh 'bundle install --path vendor/bundle'
end
