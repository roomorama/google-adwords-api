#!/usr/bin/ruby
#
# Authors:: api.sgomes@gmail.com (Sérgio Gomes)
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
# Helper methods for loading and managing the available services in the AdWords
# API.

require 'savon'

require 'ads_common/api_config'

module AdwordsApi

  # Contains helper methods for loading and managing the available services.
  module ApiConfig

    # Inherit from AdsCommon::ApiConfig
    class << ApiConfig
      include AdsCommon::ApiConfig
    end

    # Set defaults
    DEFAULT_VERSION = :v201109
    DEFAULT_ENVIRONMENT = :PRODUCTION
    LATEST_VERSION = :v201109

    # Set other constants
    API_NAME = 'AdwordsApi'
    CLIENT_LIB_VERSION = '0.4.4'
    DEFAULT_CONFIG_FILENAME = 'adwords_api.yml'

    # Configure the services available to each version
    @@service_config = {
      :v13 => [:AccountService, :ReportService],
      :v200909 => [:AdExtensionOverrideService, :AdGroupAdService,
                   :AdGroupCriterionService, :AdGroupService, :AdParamService,
                   :BulkMutateJobService, :CampaignAdExtensionService,
                   :CampaignCriterionService, :CampaignService,
                   :CampaignTargetService, :GeoLocationService, :InfoService,
                   :TargetingIdeaService],
      :v201003 => [:AdExtensionOverrideService, :AdGroupAdService,
                   :AdGroupCriterionService, :AdGroupService, :AdParamService,
                   :BidLandscapeService, :BulkMutateJobService,
                   :CampaignAdExtensionService, :CampaignCriterionService,
                   :CampaignService, :CampaignTargetService,
                   :GeoLocationService, :InfoService, :MediaService,
                   :ReportDefinitionService, :TargetingIdeaService],
      :v201008 => [:AdExtensionOverrideService, :AdGroupAdService,
                   :AdGroupCriterionService, :AdGroupService, :AdParamService,
                   :AlertService, :BidLandscapeService, :BulkMutateJobService,
                   :CampaignAdExtensionService, :CampaignCriterionService,
                   :CampaignService, :CampaignTargetService,
                   :CustomerSyncService, :ExperimentService,
                   :GeoLocationService, :InfoService, :MediaService,
                   :ReportDefinitionService, :ServicedAccountService,
                   :TargetingIdeaService, :TrafficEstimatorService,
                   :UserListService],
      :v201101 => [:AdExtensionOverrideService, :AdGroupAdService,
                   :AdGroupCriterionService, :AdGroupService, :AdParamService,
                   :AlertService, :BulkMutateJobService,
                   :BulkOpportunityService, :CampaignAdExtensionService,
                   :CampaignCriterionService, :CampaignService,
                   :CampaignTargetService, :ConversionTrackerService,
                   :CustomerSyncService, :DataService, :ExperimentService,
                   :GeoLocationService, :InfoService, :MediaService,
                   :ReportDefinitionService, :ServicedAccountService,
                   :TargetingIdeaService, :TrafficEstimatorService,
                   :UserListService],
      :v201109 => [:AdExtensionOverrideService, :AdGroupAdService,
                   :AdGroupCriterionService, :AdGroupService, :AdParamService,
                   :AlertService, :BulkMutateJobService,
                   :BulkOpportunityService, :CampaignAdExtensionService,
                   :CampaignCriterionService, :CampaignService,
                   :CampaignTargetService, :ConversionTrackerService,
                   :CustomerSyncService, :DataService, :ExperimentService,
                   :GeoLocationService, :InfoService, :MediaService,
                   :ReportDefinitionService, :ServicedAccountService,
                   :TargetingIdeaService, :TrafficEstimatorService,
                   :UserListService, :ConstantDataService,
                   :LocationCriterionService, :MutateJobService]
    }

    # Configure the different environments, with the base URL for each one
    @@environment_config = {
      :PRODUCTION => {
        :oauth_scope => 'https://adwords.google.com/api/adwords/',
        :v13 => 'https://adwords.google.com/api/adwords/',
        :v200909 => 'https://adwords.google.com/api/adwords/',
        :v201003 => 'https://adwords.google.com/api/adwords/',
        :v201008 => 'https://adwords.google.com/api/adwords/',
        :v201101 => 'https://adwords.google.com/api/adwords/',
        :v201109 => 'https://adwords.google.com/api/adwords/'
      },
      :SANDBOX => {
        :oauth_scope => 'https://adwords-sandbox.google.com/api/adwords/',
        :v13 => 'https://sandbox.google.com/api/adwords/',
        :v200909 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201003 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201008 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201101 => 'https://adwords-sandbox.google.com/api/adwords/',
        :v201109 => 'https://adwords-sandbox.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdir_config = {
      # v13
      [:v13, :AccountService] => '',
      [:v13, :ReportService] => '',
      # v200909
      [:v200909, :AdExtensionOverrideService] => 'cm/',
      [:v200909, :AdGroupAdService] => 'cm/',
      [:v200909, :AdGroupCriterionService] => 'cm/',
      [:v200909, :AdGroupService] => 'cm/',
      [:v200909, :AdParamService] => 'cm/',
      [:v200909, :BulkMutateJobService] => 'job/',
      [:v200909, :CampaignAdExtensionService] => 'cm/',
      [:v200909, :CampaignCriterionService] => 'cm/',
      [:v200909, :CampaignService] => 'cm/',
      [:v200909, :CampaignTargetService] => 'cm/',
      [:v200909, :GeoLocationService] => 'cm/',
      [:v200909, :InfoService] => 'info/',
      [:v200909, :TargetingIdeaService] => 'o/',
      # v201003
      [:v201003, :AdExtensionOverrideService] => 'cm/',
      [:v201003, :AdGroupAdService] => 'cm/',
      [:v201003, :AdGroupCriterionService] => 'cm/',
      [:v201003, :AdGroupService] => 'cm/',
      [:v201003, :AdParamService] => 'cm/',
      [:v201003, :BidLandscapeService] => 'cm/',
      [:v201003, :BulkMutateJobService] => 'job/',
      [:v201003, :CampaignAdExtensionService] => 'cm/',
      [:v201003, :CampaignCriterionService] => 'cm/',
      [:v201003, :CampaignService] => 'cm/',
      [:v201003, :CampaignTargetService] => 'cm/',
      [:v201003, :GeoLocationService] => 'cm/',
      [:v201003, :InfoService] => 'info/',
      [:v201003, :MediaService] => 'cm/',
      [:v201003, :ReportDefinitionService] => 'cm/',
      [:v201003, :TargetingIdeaService] => 'o/',
      # v201008
      [:v201008, :AdExtensionOverrideService] => 'cm/',
      [:v201008, :AdGroupAdService] => 'cm/',
      [:v201008, :AdGroupCriterionService] => 'cm/',
      [:v201008, :AdGroupService] => 'cm/',
      [:v201008, :AdParamService] => 'cm/',
      [:v201008, :AlertService] => 'mcm/',
      [:v201008, :BidLandscapeService] => 'cm/',
      [:v201008, :BulkMutateJobService] => 'job/',
      [:v201008, :CampaignAdExtensionService] => 'cm/',
      [:v201008, :CampaignCriterionService] => 'cm/',
      [:v201008, :CampaignService] => 'cm/',
      [:v201008, :CampaignTargetService] => 'cm/',
      [:v201008, :CustomerSyncService] => 'ch/',
      [:v201008, :ExperimentService] => 'cm/',
      [:v201008, :GeoLocationService] => 'cm/',
      [:v201008, :InfoService] => 'info/',
      [:v201008, :MediaService] => 'cm/',
      [:v201008, :ReportDefinitionService] => 'cm/',
      [:v201008, :ServicedAccountService] => 'mcm/',
      [:v201008, :TargetingIdeaService] => 'o/',
      [:v201008, :TrafficEstimatorService] => 'o/',
      [:v201008, :UserListService] => 'cm/',
      # v201101
      [:v201101, :AdExtensionOverrideService] => 'cm/',
      [:v201101, :AdGroupAdService] => 'cm/',
      [:v201101, :AdGroupCriterionService] => 'cm/',
      [:v201101, :AdGroupService] => 'cm/',
      [:v201101, :AdParamService] => 'cm/',
      [:v201101, :AlertService] => 'mcm/',
      [:v201101, :BulkMutateJobService] => 'job/',
      [:v201101, :BulkOpportunityService] => 'o/',
      [:v201101, :CampaignAdExtensionService] => 'cm/',
      [:v201101, :CampaignCriterionService] => 'cm/',
      [:v201101, :CampaignService] => 'cm/',
      [:v201101, :CampaignTargetService] => 'cm/',
      [:v201101, :ConversionTrackerService] => 'cm/',
      [:v201101, :CustomerSyncService] => 'ch/',
      [:v201101, :DataService] => 'cm/',
      [:v201101, :ExperimentService] => 'cm/',
      [:v201101, :GeoLocationService] => 'cm/',
      [:v201101, :InfoService] => 'info/',
      [:v201101, :MediaService] => 'cm/',
      [:v201101, :ReportDefinitionService] => 'cm/',
      [:v201101, :ServicedAccountService] => 'mcm/',
      [:v201101, :TargetingIdeaService] => 'o/',
      [:v201101, :TrafficEstimatorService] => 'o/',
      [:v201101, :UserListService] => 'cm/',
      # v201109
      [:v201109, :AdExtensionOverrideService] => 'cm/',
      [:v201109, :AdGroupAdService] => 'cm/',
      [:v201109, :AdGroupCriterionService] => 'cm/',
      [:v201109, :AdGroupService] => 'cm/',
      [:v201109, :AdParamService] => 'cm/',
      [:v201109, :AlertService] => 'mcm/',
      [:v201109, :BulkMutateJobService] => 'job/',
      [:v201109, :BulkOpportunityService] => 'o/',
      [:v201109, :CampaignAdExtensionService] => 'cm/',
      [:v201109, :CampaignCriterionService] => 'cm/',
      [:v201109, :CampaignService] => 'cm/',
      [:v201109, :CampaignTargetService] => 'cm/',
      [:v201109, :ConversionTrackerService] => 'cm/',
      [:v201109, :CustomerSyncService] => 'ch/',
      [:v201109, :DataService] => 'cm/',
      [:v201109, :ExperimentService] => 'cm/',
      [:v201109, :GeoLocationService] => 'cm/',
      [:v201109, :InfoService] => 'info/',
      [:v201109, :MediaService] => 'cm/',
      [:v201109, :ReportDefinitionService] => 'cm/',
      [:v201109, :ServicedAccountService] => 'mcm/',
      [:v201109, :TargetingIdeaService] => 'o/',
      [:v201109, :TrafficEstimatorService] => 'o/',
      [:v201109, :UserListService] => 'cm/',
      [:v201109, :ConstantDataService] => 'cm/',
      [:v201109, :LocationCriterionService] => 'cm/',
      [:v201109, :MutateJobService] => 'cm/'
    }

    # Configure the auth servers to use for each environment
    @@auth_server_config = {
      :PRODUCTION => 'https://www.google.com',
      :SANDBOX => 'https://www.google.com'
    }

    @@headers_config = {
      :REQUEST_HEADER => 'RequestHeader',
      :AUTH_NAMESPACE_PREAMBLE =>
          'https://adwords.google.com/api/adwords/cm/',
      :LOGIN_SERVICE_NAME => 'adwords'
    }

    public

    # Getters for constants and module variables.
    def self.default_version
      DEFAULT_VERSION
    end

    def self.default_environment
      DEFAULT_ENVIRONMENT
    end

    def self.latest_version
      LATEST_VERSION
    end

    def self.api_name
      API_NAME
    end

    def self.service_config
      @@service_config
    end

    def self.environment_config
      @@environment_config
    end

    def self.subdir_config
      @@subdir_config
    end

    def self.auth_server_config
      @@auth_server_config
    end

    def self.default_config_filename
      DEFAULT_CONFIG_FILENAME
    end

    def self.headers_config
      @@headers_config
    end

    # Get the download URL for reports.
    #
    # Args:
    # - environment: the service environment to be used
    # - version: the API version (as a symbol)
    #
    # Returns:
    # - The endpoint URL (as a string)
    #
    def self.report_download_url(environment, version)
      base = get_wsdl_base(environment, version)
      if base and service_config[version].include?(:ReportDefinitionService)
        base += 'reportdownload'
      end
      return base
    end

    # Get the download URL for Ad Hoc reports.
    #
    # Args:
    # - environment: the service environment to be used
    # - version: the API version (as a symbol)
    #
    # Returns:
    # - The endpoint URL (as a string)
    #
    def self.adhoc_report_download_url(environment, version)
      base = get_wsdl_base(environment, version)
      if base
        base += 'reportdownload/%s' % version.to_s
      end
      return base
    end
  end
end
