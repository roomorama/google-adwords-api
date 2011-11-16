#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:35:09.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module AdGroupService
  class AdGroupServiceRegistry
    ADGROUPSERVICE_METHODS = {:get=>{:input=>[{:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:service_selector}], :output=>{:fields=>[{:type=>"AdGroupPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"AdGroupOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"AdGroupReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    ADGROUPSERVICE_TYPES = {:AdGroupExperimentData=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:experiment_id}, {:type=>"ExperimentDeltaStatus", :max_occurs=>1, :min_occurs=>0, :name=>:experiment_delta_status}, {:type=>"ExperimentDataStatus", :max_occurs=>1, :min_occurs=>0, :name=>:experiment_data_status}, {:type=>"AdGroupExperimentBidMultipliers", :max_occurs=>1, :min_occurs=>0, :name=>:experiment_bid_multipliers}]}, :Selector=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:fields}, {:type=>"Predicate", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:predicates}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"OrderBy", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ordering}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :ManualCPCAdGroupExperimentBidMultipliers=>{:fields=>[{:type=>"BidMultiplier", :max_occurs=>1, :min_occurs=>0, :name=>:max_cpc_multiplier}, {:type=>"BidMultiplier", :max_occurs=>1, :min_occurs=>0, :name=>:max_content_cpc_multiplier}], :base=>"AdGroupExperimentBidMultipliers"}, :Bid=>{:fields=>[{:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:amount}]}, :Stats=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:start_date}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:end_date}, {:type=>"Stats.Network", :max_occurs=>1, :min_occurs=>0, :name=>:network}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:clicks}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:impressions}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:average_position}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpc}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpm}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:ctr}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions_many_per_click}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion_many_per_click}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:view_through_conversions}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:total_conv_value}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:value_per_conv}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:value_per_conv_many_per_click}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:invalid_clicks}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:invalid_click_rate}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:stats_type}]}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :ManualCPMAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:max_cpm}], :base=>"AdGroupBids"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :AdGroup=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:name}, {:type=>"AdGroup.Status", :max_occurs=>1, :min_occurs=>0, :name=>:status}, {:type=>"AdGroupBids", :max_occurs=>1, :min_occurs=>0, :name=>:bids}, {:type=>"AdGroupExperimentData", :max_occurs=>1, :min_occurs=>0, :name=>:experiment_data}, {:type=>"Stats", :max_occurs=>1, :min_occurs=>0, :name=>:stats}]}, :BidMultiplier=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:multiplier}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:multiplied_bid}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :PercentCPAAdGroupBids=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:percent_cpa}], :base=>"AdGroupBids"}, :OrderBy=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"SortOrder", :max_occurs=>1, :min_occurs=>0, :name=>:sort_order}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :ManualCPMAdGroupExperimentBidMultipliers=>{:fields=>[{:type=>"BidMultiplier", :max_occurs=>1, :min_occurs=>0, :name=>:max_cpm_multiplier}], :base=>"AdGroupExperimentBidMultipliers"}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :AdGroupOperation=>{:fields=>[{:type=>"AdGroup", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :BudgetOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:proxy_keyword_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:proxy_site_max_cpc}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:enhanced_cpc_enabled}], :base=>"AdGroupBids"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :AdGroupBids=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_bids_type}], :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :AdGroupPage=>{:fields=>[{:type=>"AdGroup", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}, :ConversionOptimizerAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:target_cpa}, {:type=>"ConversionOptimizerBidType", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_optimizer_bid_type}, {:type=>"ConversionDeduplicationMode", :max_occurs=>1, :min_occurs=>0, :name=>:deduplication_mode}], :base=>"AdGroupBids"}, :AdGroupExperimentBidMultipliers=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_experiment_bid_multipliers_type}], :abstract=>true}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :abstract=>true}, :Predicate=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"Predicate.Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:values}]}, :AdGroupReturnValue=>{:fields=>[{:type=>"AdGroup", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :ManualCPCAdGroupBids=>{:fields=>[{:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:keyword_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:keyword_content_max_cpc}, {:type=>"Bid", :max_occurs=>1, :min_occurs=>0, :name=>:site_max_cpc}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:enhanced_cpc_enabled}], :base=>"AdGroupBids"}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}}
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
