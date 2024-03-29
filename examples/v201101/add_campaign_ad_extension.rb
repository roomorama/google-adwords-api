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
# This example illustrates how to create a campaign ad extension for an existing
# campaign. To create a campaign, run add_campaign.rb.
#
# Tags: GeoLocationService.get, CampaignAdExtensionService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201101

def add_campaign_ad_extension()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_ad_ext_srv =
      adwords.service(:CampaignAdExtensionService, API_VERSION)
  geo_location_srv = adwords.service(:GeoLocationService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  selector = {
    :addresses => [
      {
        :street_address => '1600 Amphitheatre Parkway',
        :city_name => 'Mountain View',
        :province_code => 'CA',
        :postal_code => '94043',
        :country_code => 'US'
      },
      {
        :street_address => "38 Avenue de l'Opéra",
        :city_name => 'Paris',
        :postal_code => '75002',
        :country_code => 'FR'
      }
    ]
  }

  # Get the geo location info for the various addresses and build the operations
  # with that information.
  locations = geo_location_srv.get(selector)
  if locations
    operations = []
    locations.each do |location|
      operation = {
        :operator => 'ADD',
        :operand => {
          :campaign_id => campaign_id,
          :status => 'ACTIVE',
          :ad_extension => {
            # The 'xsi_type' field allows you to specify the xsi:type of the
            # object being created. It's only necessary when you must provide an
            # explicit type that the client library can't infer.
            :xsi_type => 'LocationExtension',
            :address => location[:address],
            :geo_point => location[:geo_point],
            :encoded_location => location[:encoded_location],
            :source => 'ADWORDS_FRONTEND'
          }
        }
      }
      operations << operation
    end
  else
    puts "Unable to retrieve geo locations."
    exit
  end

  # Add campaign ad extensions.
  response = campaign_ad_ext_srv.mutate(operations)
  extensions = response[:value]
  extensions.each do |extension|
    puts "Campaign extension id #{extension[:ad_extension][:id]} and status " +
        "#{extension[:status]} successfully added."
  end
end

if __FILE__ == $0
  begin
    add_campaign_ad_extension()

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
