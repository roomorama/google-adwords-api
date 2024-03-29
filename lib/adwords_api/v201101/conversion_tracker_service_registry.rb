#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:36:14.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module ConversionTrackerService
  class ConversionTrackerServiceRegistry
    CONVERSIONTRACKERSERVICE_METHODS = {:get=>{:input=>[{:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:service_selector}], :output=>{:fields=>[{:type=>"ConversionTrackerPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"ConversionTrackerOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"ConversionTrackerReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    CONVERSIONTRACKERSERVICE_TYPES = {:Selector=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:fields}, {:type=>"Predicate", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:predicates}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"OrderBy", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ordering}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :ConversionTracker=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:name}, {:type=>"ConversionTracker.Status", :max_occurs=>1, :min_occurs=>0, :name=>:status}, {:type=>"ConversionTracker.Category", :max_occurs=>1, :min_occurs=>0, :name=>:category}, {:type=>"ConversionTrackerStats", :max_occurs=>1, :min_occurs=>0, :name=>:stats}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:viewthrough_lookback_window}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:viewthrough_conversion_de_dup_search}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:is_product_ads_chargeable}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:product_ads_chargeable_conversion_window}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_tracker_type}], :abstract=>true}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :ConversionTrackerOperation=>{:fields=>[{:type=>"ConversionTracker", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :ConversionTrackerReturnValue=>{:fields=>[{:type=>"ConversionTracker", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :OrderBy=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"SortOrder", :max_occurs=>1, :min_occurs=>0, :name=>:sort_order}]}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :ConversionTrackerPage=>{:fields=>[{:type=>"ConversionTracker", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"NoStatsPage"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :AdWordsConversionTracker=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:snippet}, {:type=>"AdWordsConversionTracker.MarkupLanguage", :max_occurs=>1, :min_occurs=>0, :name=>:markup_language}, {:type=>"AdWordsConversionTracker.HttpProtocol", :max_occurs=>1, :min_occurs=>0, :name=>:http_protocol}, {:type=>"AdWordsConversionTracker.TextFormat", :max_occurs=>1, :min_occurs=>0, :name=>:text_format}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_page_language}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:background_color}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_revenue_value}], :base=>"ConversionTracker"}, :ConversionTrackerStats=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:num_conversion_events}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_value}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:most_recent_conversion_date}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:num_converted_clicks}]}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :abstract=>true}, :Predicate=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"Predicate.Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:values}]}, :NoStatsPage=>{:fields=>[], :abstract=>true, :base=>"Page"}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}}
    CONVERSIONTRACKERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CONVERSIONTRACKERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CONVERSIONTRACKERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CONVERSIONTRACKERSERVICE_NAMESPACES[index]
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
