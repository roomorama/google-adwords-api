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
# This example illustrates how to retrieve all the campaign ad extensions for a
# campaign. To create a campaign ad extension, run add_campaign_ad_extension.rb.
#
# Tags: CampaignAdExtensionService.get

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201008

def get_all_campaign_ad_extensions()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  campaign_ad_ext_srv =
      adwords.service(:CampaignAdExtensionService, API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get all the campaign ad extensions for this campaign.
  selector = {
    :campaign_ids => [campaign_id]
  }
  response = campaign_ad_ext_srv.get(selector)
  if response and response[:entries]
    extensions = response[:entries]
    puts "Campaign ##{campaign_id} has #{extensions.size} campaign ad " +
        "extension(s)."
    extensions.each do |extension|
      puts "  Campaign ad extension id is #{extension[:ad_extension][:id]} " +
          "and status is \"#{extension[:status]}\"."
    end
  else
    puts "No campaign ad extensions found for campaign ##{campaign_id}."
  end
end

if __FILE__ == $0
  begin
    get_all_campaign_ad_extensions()

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
