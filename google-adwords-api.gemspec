lib = File.expand_path("../lib", __FILE__)
$:.unshift lib unless $:.include? lib

Gem::Specification.new do |s|
  s.name = 'google-adwords-api'
  s.version = '0.4.4'
  s.author = 'Danial Klimkin'
  s.email = 'api.dklimkin@gmail.com'
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Ruby Client libraries for AdWords API'
  s.description = "%s is a AdWords API client library for Ruby" % s.name

  s.add_dependency('google-ads-common', '~> 0.5.4')
  s.add_dependency('savon', '>= 0.9.7')
  
  s.files = `git ls-files`.split("\n")
  s.require_path = "lib"
end