#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example illustrates how to add an AdWords conversion.
#
# Tags: ConversionTrackerService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109

def add_conversion()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  conv_tracker_srv = adwords.service(:ConversionTrackerService, API_VERSION)

  # Prepare for adding conversion.
  operation = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'AdWordsConversionTracker',
      :name => "Earth to Mars Cruises Conversion #%d" %
          (Time.new.to_f * 1000).to_i,
      :category => 'DEFAULT',
      :markup_language => 'HTML',
      :http_protocol => 'HTTP',
      :text_format => 'HIDDEN'
    }
  }

  # Add conversion.
  response = conv_tracker_srv.mutate([operation])
  if response and response[:value]
    conversion = response[:value].first
    puts "Conversion with ID #{conversion[:id]}, name " +
        "'#{conversion[:name]}', status '#{conversion[:status]}' and " +
        " category '#{conversion[:category]}' was added."
  else
    puts 'No conversions were added.'
  end
end

if __FILE__ == $0
  begin
    add_conversion()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
