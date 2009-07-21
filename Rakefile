require 'rake'
require 'spec/rake/spectask'

desc 'Default: run specs.'
task :default => :spec

desc 'Run the specs'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/**/*_spec.rb']
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = 'couchrest-rails'
    gemspec.summary = 'Make working with CouchDB and Rails even better.'
    gemspec.description = 'Rails plugin for connecting to and working with CouchDB via CouchRest'
    gemspec.homepage = 'http://github.com/therealadam/couchrest-rails'
    gemspec.authors = ['Henry Poydar']
  end
rescue LoadError
  puts "Jeweler not available. Can't build RubyGems."
end
