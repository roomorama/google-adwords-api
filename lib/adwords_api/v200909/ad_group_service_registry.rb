#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:39:23.

require 'adwords_api/errors'

module AdwordsApi; module V200909; module AdGroupService
  class AdGroupServiceRegistry
    ADGROUPSERVICE_METHODS = {:get=>{:input=>[{:type=>"AdGroupSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"AdGroupPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"AdGroupOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"AdGroupReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    ADGROUPSERVICE_TYPES = {:DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :AdGroupSelector=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ad_group_ids}, {:type=>"StatsSelector", :max_occurs=>1, :min_occurs=>0, :name=>:stats_selector}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :Bid=>{:fields=>[{:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:amount}]}, :Stats=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:start_date}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:end_date}, {:type=>"Stats.Network", :max_occurs=>1, :min_occurs=>0, :name=>:network}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:clicks}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:impressions}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:average_position}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpc}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpm}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:ctr}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions_many_per_click}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion_many_per_click}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:stats_type}]}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :ManualCPMAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:max_cpm}], :base=>"AdGroupBids"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :AdGroup=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:name}, {:type=>"AdGroup.Status", :max_occurs=>1, :min_occurs=>0, :name=>:status}, {:type=>"AdGroupBids", :max_occurs=>1, :min_occurs=>0, :name=>:bids}, {:type=>"Stats", :max_occurs=>1, :min_occurs=>0, :name=>:stats}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:application_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :AdGroupOperation=>{:fields=>[{:type=>"AdGroup", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :BudgetOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:proxy_keyword_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:proxy_site_max_cpc}], :base=>"AdGroupBids"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :AdGroupBids=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_bids_type}], :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :AdGroupPage=>{:fields=>[{:type=>"AdGroup", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}, :ConversionOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:target_cpa}], :base=>"AdGroupBids"}, :StatsSelector=>{:fields=>[{:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:stats_selector_type}]}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :abstract=>true}, :AdGroupReturnValue=>{:fields=>[{:type=>"AdGroup", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :ManualCPCAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:keyword_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:keyword_content_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:site_max_cpc}], :base=>"AdGroupBids"}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}}
    ADGROUPSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
