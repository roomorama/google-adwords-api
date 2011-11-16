#!/usr/bin/ruby
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# AdWords API Rakefile.

require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'
require './lib/adwords_api/api_config'
require './lib/adwords_api/extensions'

# Google common ads library used for wrapper code generation.
gem 'google-ads-common'
require 'ads_common/build/savon_generator'

files = FileList['{lib,examples}/**/*', 'Rakefile'].to_a
tests = FileList['test/**/test*.rb']
docs = ['README', 'COPYING', 'ChangeLog']
extra_files = ['adwords_api.yml']

spec = Gem::Specification.new do |s|
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

package_task = Gem::PackageTask.new(spec) do |pkg|
  pkg.need_tar = true
  pkg.package_files.include(extra_files)
end

Rake::TestTask.new do |t|
  t.test_files = tests
end

desc 'Default target - build'
task :default => [:generate, :package]

desc 'Generate API stubs only'
task :generate do
  logger = Logger.new(STDOUT)
  logger.level = Logger::INFO
  api_config = AdwordsApi::ApiConfig
  versions = api_config.versions()
  versions.each do |version|
    code_path = "lib/%s/%s" % [api_config.api_name.to_s.snakecase, version]
    wsdls = AdwordsApi::ApiConfig.get_wsdls(version)
    wsdls.each do |service_name, wsdl_url|
      logger.info("Processing %s at [%s]..." % [service_name, wsdl_url])
      extensions = AdwordsApi::Extensions.extensions()[[version,
          service_name.to_sym]] || []
      generator = AdsCommon::Build::SavonGenerator.new(wsdl_url, code_path,
          api_config.api_name, version, service_name, extensions)
      generator.process_wsdl()
    end
    package_task.package_files.include(FileList[code_path + '/*'].to_a)
  end
end
