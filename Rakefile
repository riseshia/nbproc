# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/extensiontask"
require "rake/testtask"

Rake::ExtensionTask.new("nbproc") do |ext|
  ext.lib_dir = "lib/nbproc"
end

Rake::TestTask.new(test: :compile) do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

task default: :test
