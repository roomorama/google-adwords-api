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
# This example illustrates how to update an ad group criterion, setting its
# bid. To create an ad group criterion, run add_ad_group_criterion.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201008

def update_ad_group_criterion()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Prepare for updating ad group criterion.
  operation = {
    :operator => 'SET',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :id => criterion_id
      },
      :bids => {
        :xsi_type => 'ManualCPCAdGroupCriterionBids',
        :max_cpc => {
          :amount => {
            :micro_amount => 1000000
          }
        }
      }
    }
  }

  # Update criterion.
  response = ad_group_criterion_srv.mutate([operation])
  if response and response[:value]
    ad_group_criterion = response[:value].first
    puts 'Criterion id %d was successfully updated, bid set to %d.' %
        [ad_group_criterion[:criterion][:id],
         ad_group_criterion[:bids][:max_cpc][:amount][:micro_amount]]
  else
    puts 'No criteria were updated.'
  end
end

if __FILE__ == $0
  begin
    update_ad_group_criterion()

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
