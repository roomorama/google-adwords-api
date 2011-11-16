#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
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
# This example deletes a bulk mutate job using the 'REMOVE' operator. Jobs may
# only deleted if they are in the 'PENDING' state and have not yet recieved
# all of their request parts. To get bulk mutate jobs, run
# get_all_bulk_mutate_jobs.rb.
#
# Tags: BulkMutateJobService.mutate

require 'rubygems'
require 'adwords_api'

API_VERSION = :v201101

def delete_bulk_mutate_job()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  bulk_mutate_job_srv = adwords.service(:BulkMutateJobService, API_VERSION)

  job_id = 'INSERT_BULK_MUTATE_JOB_ID_HERE'

  # Create operation.
  operation = {
    :operator => 'REMOVE',
    :operand => {
      # The 'xsi_type' field allows you to specify the xsi:type of the object
      # being created. It's only necessary when you must provide an explicit
      # type that the client library can't infer.
      :xsi_type => 'BulkMutateJob',
      :id => job_id
    }
  }

  # Delete job.
  response = bulk_mutate_job_srv.mutate(operation)
  if response and response[:value]
    job = response[:value].first
    puts 'Job id %d was successfully deleted.' % job[:id]
  else
    puts 'No jobs were deleted.'
  end

end

if __FILE__ == $0
  begin
    delete_bulk_mutate_job()

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
