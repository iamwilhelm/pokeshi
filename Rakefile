require 'rake'
require 'hanami/rake_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.libs    << 'spec'
  # NOTE turned off warnings for Hanami
  t.warning = false
end

task default: :test
task spec: :test
