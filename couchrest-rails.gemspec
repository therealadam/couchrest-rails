# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{couchrest-rails}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Henry Poydar"]
  s.date = %q{2009-07-22}
  s.description = %q{Rails plugin for connecting to and working with CouchDB via CouchRest}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "generators/couch_rest_rails/USAGE",
     "generators/couch_rest_rails/couch_rest_rails_generator.rb",
     "generators/couch_rest_rails/templates/couchdb.yml",
     "generators/couch_rest_rails/templates/couchdb_initializer.rb",
     "init.rb",
     "install.rb",
     "lib/autotest/discover.rb",
     "lib/couch_rest_rails.rb",
     "lib/couch_rest_rails/database.rb",
     "lib/couch_rest_rails/document.rb",
     "lib/couch_rest_rails/fixtures.rb",
     "lib/couch_rest_rails/lucene.rb",
     "lib/couch_rest_rails/tests.rb",
     "lib/couch_rest_rails/views.rb",
     "lib/couch_rest_tasks.rb",
     "lib/spec/rails/matchers/couch_document_validations.rb",
     "spec/lib/couch_rest_rails/database_spec.rb",
     "spec/lib/couch_rest_rails/document_spec.rb",
     "spec/lib/couch_rest_rails/fixtures_spec.rb",
     "spec/lib/couch_rest_rails/tests_spec.rb",
     "spec/lib/couch_rest_rails/views_spec.rb",
     "spec/lib/couch_rest_rails_spec.rb",
     "spec/matchers/couch_document_validations_spec.rb",
     "spec/mock/fixtures/bars.yml",
     "spec/mock/fixtures/foos.yml",
     "spec/mock/views/bars/all/map.js",
     "spec/mock/views/foos/all/map.js",
     "spec/mock/views/foos/tags/map.js",
     "spec/mock/views/foos/tags/reduce.js",
     "spec/spec_helper.rb",
     "tasks/couch_rest_rails_tasks.rake",
     "uninstall.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/therealadam/couchrest-rails}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Make working with CouchDB and Rails even better.}
  s.test_files = [
    "spec/lib/couch_rest_rails/database_spec.rb",
     "spec/lib/couch_rest_rails/document_spec.rb",
     "spec/lib/couch_rest_rails/fixtures_spec.rb",
     "spec/lib/couch_rest_rails/tests_spec.rb",
     "spec/lib/couch_rest_rails/views_spec.rb",
     "spec/lib/couch_rest_rails_spec.rb",
     "spec/matchers/couch_document_validations_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
