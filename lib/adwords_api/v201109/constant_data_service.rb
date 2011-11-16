#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:38:46.

require 'ads_common/savon_service'
require 'adwords_api/v201109/constant_data_service_registry'

module AdwordsApi; module V201109; module ConstantDataService
  class ConstantDataService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201109'
      super(api, endpoint, namespace, :v201109)
    end

    def get_carrier_criterion(*args, &block)
      return execute_action('get_carrier_criterion', args, &block)
    end

    def get_language_criterion(*args, &block)
      return execute_action('get_language_criterion', args, &block)
    end

    private

    def get_service_registry()
      return ConstantDataServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201109::ConstantDataService
    end
  end
end; end; end
