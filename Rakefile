require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

runtime_env = ENV['ENV']
if runtime_env != nil
  ENV['FIG_NEWTON_FILE'] = "#{runtime_env}.yml"
else
  ENV['FIG_NEWTON_FILE'] = 'heroku.yml'
end

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

task :specs do
  sh 'bundler exec rspec --format documentation'
end
