lib = File.expand_path("../lib", __FILE__)
$:.unshift lib unless $:.include? lib

require 'adwords_api/api_config'

Gem::Specification.new do |s|
  s.name = 'google-adwords-api'
  s.version = AdwordsApi::ApiConfig::CLIENT_LIB_VERSION
  s.author = 'Danial Klimkin'
  s.email = 'api.dklimkin@gmail.com'
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Ruby Client libraries for AdWords API'
  s.description = "%s is a AdWords API client library for Ruby" % s.name
  s.files = files
  s.require_path = 'lib'
  s.test_files = tests
  s.has_rdoc = true
  s.extra_rdoc_files = docs
  s.add_dependency('google-ads-common', '~> 0.5.4')
  s.add_dependency('savon', '>= 0.9.7')
end