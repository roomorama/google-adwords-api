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
# This example gets a bid landscapes for a criterion. To get criteria, run
# get_all_ad_group_criteria.rb.
#
# Tags: DataService.getCriterionBidLandscape

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201109

def get_criterion_bid_landscapes()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  data_srv = adwords.service(:DataService, API_VERSION)

  ad_group_id = 'INSERT_ADGROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Get criterion bid landscape.
  selector = {
    :fields => ["AdGroupId", "CriterionId", "StartDate", "EndDate", "Bid",
        "LocalClicks", "LocalCost", "MarginalCpc", "LocalImpressions"],
    :predicates => [
      {:field => 'AdGroupId', :operator => 'IN', :values => [ad_group_id]},
      {:field => 'CriterionId', :operator => 'IN', :values => [criterion_id]},
    ]
  }
  page = data_srv.get_criterion_bid_landscape(selector)
  if page and page[:entries]
    puts "#{page[:entries].length} bid landscape(s) retrieved."
    page[:entries].each do |bid_landscape|
      puts "Retrieved criterion bid landscape with ad group id " +
          "'#{bid_landscape[:ad_group_id]}', criterion id " +
          "'#{bid_landscape[:criterion_id]}', start date " +
          "'#{bid_landscape[:start_date]}', end date "+
          "'#{bid_landscape[:end_date]}', with landscape points:"
      bid_landscape[:landscape_points].each do |point|
        puts "  #{point[:bid][:micro_amount]} => clicks: #{point.clicks}, " +
            "cost: #{point[:cost][:micro_amount]}, marginalCpc: " +
            "#{point[:marginal_cpc][:micro_amount]}, impressions: " +
            "#{point[:impressions]}"
      end
    end
  else
    puts "No bid landscapes retrieved."
  end
end

if __FILE__ == $0
  begin
    get_criterion_bid_landscapes()

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
