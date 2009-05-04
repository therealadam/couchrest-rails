# CouchRest-Rails

A Rails plugin for connecting to and working with a [CouchDB](http://couchdb.apache.org) document-oriented database via the [CouchRest](http://github.com/jchris/couchrest) RESTful CouchDB client.

Specifically, this plugin provides the following utilities:

* Initializer for use with a couchdb.yml configuration file
* CouchDB specific rake tasks

Important: This plugin assumes your application only uses one CouchDB database.

## Requirements

* [CouchRest gem](http://github.com/jchris/couchrest)
* JSON gem
* [RSpec](http://github.com/dchelimsky/rspec) BDD framework (optional - for running plugin specs)
* [RSpec-Rails](http://github.com/dchelimsky/rspec-rails) library (optional - for running plugin specs)

## Installation and usage

Install with the native Rails plugin installation script:

    script/plugin install

Or simply add to vendor/plugins and generate the files you need:

    script/generate couchrest_rails relax

## Further development and testing

To run the test suite, you'll need rspec installed with rspec-rails library enabled for the host application. You can run the tests in the following way:

    <rails_root>$ rake spec:plugins
    <plugin_root>$ rake spec
    <plugin_root>$ autospec

## TODO

* rake tasks - view syncs
* rake tasks - test setup/teardown
* rake tasks - fixtures
* CouchDocument model for extending
** timestamp hooks
** basic views?
* document usages
* restrict model to default attributes and their types?
* test views?
* gemify
* Add more parseable options to couchdb.yml
* Expand beyond a single database per applicatipn

## License

Copyright (c) Henry Poydar, released under the MIT license
