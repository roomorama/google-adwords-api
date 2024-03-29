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
# This example adds geo, language and network targeting to an existing campaign.
# To create a campaign, run add_campaign.rb.
#
# Tags: CampaignTargetService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v200909

def set_campaign_targets()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_target_srv = adwords.service(:CampaignTargetService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Language targeting.
  language_operation = {
    :operator => 'SET',
    :operand => {
      :xsi_type => 'LanguageTargetList',
      :campaign_id => campaign_id,
      :targets => [{:language_code => 'fr'}, {:language_code => 'ja'}]
     }
  }

  # Geo targeting.
  geo_operation = {
    :operator => 'SET',
    :operand => {
      :xsi_type => 'GeoTargetList',
      :campaign_id => campaign_id,
      :targets => [
        {
          :xsi_type => 'CountryTarget',
          :excluded => false,
          :country_code => 'US'
        },
        {
          :xsi_type => 'CountryTarget',
          :excluded => false,
          :country_code => 'JP'
        }
      ]
    }
  }

  # Network targeting.
  network_operation = {
    :operator => 'SET',
    :operand => {
      :xsi_type => 'NetworkTargetList',
      :campaign_id => campaign_id,
      :targets => [
        {:network_coverage_type => 'GOOGLE_SEARCH'},
        {:network_coverage_type => 'SEARCH_NETWORK'}
      ]
     }
  }

  # Set campaign targeting.
  response = campaign_target_srv.mutate([language_operation, geo_operation,
      network_operation])
  targets = response[:value]
  targets.each do |target|
    puts "Campaign target of type #{target[:xsi_type]} for campaign id " +
        "#{target[:campaign_id]} was set."
  end
end

if __FILE__ == $0
  begin
    set_campaign_targets()

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
