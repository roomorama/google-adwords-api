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
# This example illustrates how to add a criterion to a given ad group. To create
# an ad group, run add_ad_group.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v200909

def add_ad_group_criteria()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
  adwords.service(:AdGroupCriterionService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create keyword.
  kwd_operation = {
    :operator => 'ADD',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Keyword',
        :text => 'mars cruise',
        :match_type => 'BROAD'
      }
    }
  }

  # Create placement.
  plc_operation = {
    :operator => 'ADD',
    :operand => {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Placement',
        :url => 'http://mars.google.com'
      }
    }
  }

  # Add criteria.
  response = ad_group_criterion_srv.mutate([kwd_operation, plc_operation])
  if response and response[:value]
    ad_group_criteria = response[:value]
    puts "Added #{ad_group_criteria.length} criteria to ad group " +
        "#{ad_group_id}."
    ad_group_criteria.each do |ad_group_criterion|
      puts "  Criterion id is #{ad_group_criterion[:criterion][:id]} and " +
          "type is #{ad_group_criterion[:criterion][:xsi_type]}."
    end
  else
    puts "No criteria were added."
  end
end

if __FILE__ == $0
  begin
    add_ad_group_criteria()

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
