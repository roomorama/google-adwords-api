#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:35:20.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module DataService
  class DataServiceRegistry
    DATASERVICE_METHODS = {:get_ad_group_bid_landscape=>{:input=>[{:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:service_selector}], :output=>{:fields=>[{:type=>"AdGroupBidLandscapePage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_ad_group_bid_landscape_response"}}, :get_criterion_bid_landscape=>{:input=>[{:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:service_selector}], :output=>{:fields=>[{:type=>"CriterionBidLandscapePage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_criterion_bid_landscape_response"}}}
    DATASERVICE_TYPES = {:Selector=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:fields}, {:type=>"Predicate", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:predicates}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"OrderBy", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ordering}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :AdGroupBidLandscapePage=>{:fields=>[{:type=>"AdGroupBidLandscape", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"NoStatsPage"}, :DataEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:data_entry_type}], :abstract=>true}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}, :AdGroupBidLandscape=>{:fields=>[{:type=>"AdGroupBidLandscape.Type", :max_occurs=>1, :min_occurs=>0, :name=>:type}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:landscape_current}], :base=>"BidLandscape"}, :CriterionBidLandscapePage=>{:fields=>[{:type=>"CriterionBidLandscape", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"NoStatsPage"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :OrderBy=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"SortOrder", :max_occurs=>1, :min_occurs=>0, :name=>:sort_order}]}, :BidLandscape=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:start_date}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:end_date}, {:type=>"BidLandscape.LandscapePoint", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:landscape_points}], :abstract=>true, :base=>"DataEntry"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :CriterionBidLandscape=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:criterion_id}], :base=>"BidLandscape"}, :"BidLandscape.LandscapePoint"=>{:fields=>[{:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:bid}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:clicks}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:marginal_cpc}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:impressions}]}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :abstract=>true}, :Predicate=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"Predicate.Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:values}]}, :NoStatsPage=>{:fields=>[], :abstract=>true, :base=>"Page"}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}}
    DATASERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return DATASERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return DATASERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return DATASERVICE_NAMESPACES[index]
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
