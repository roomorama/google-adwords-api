#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:34:51.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module BulkOpportunityService
  class BulkOpportunityServiceRegistry
    BULKOPPORTUNITYSERVICE_METHODS = {:get=>{:input=>[{:type=>"BulkOpportunitySelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"BulkOpportunityPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}}
    BULKOPPORTUNITYSERVICE_TYPES = {:StringAttribute=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Opportunity=>{:fields=>[{:type=>"OpportunityIdea", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:opportunity_ideas}]}, :MoneyAttribute=>{:fields=>[{:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :BooleanAttribute=>{:fields=>[{:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :WebpageDescriptorAttribute=>{:fields=>[{:type=>"WebpageDescriptor", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :AdFormatSpec=>{:fields=>[{:type=>"SiteConstants.AdFormat", :max_occurs=>1, :min_occurs=>0, :name=>:format}]}, :DataEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:data_entry_type}], :ns=>0, :abstract=>true}, :ProductCondition=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:argument}, {:type=>"ProductConditionOperand", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :ns=>0}, :OpportunityAttribute_AttributeMapEntry=>{:fields=>[{:type=>"OpportunityAttributeType", :max_occurs=>1, :min_occurs=>0, :name=>:key}, {:type=>"Attribute", :max_occurs=>1, :min_occurs=>0, :name=>:value}]}, :MonthlySearchVolume=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:year}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:month}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:count}]}, :IntegerAttribute=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Keyword=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:text}, {:type=>"KeywordMatchType", :max_occurs=>1, :min_occurs=>0, :name=>:match_type}], :ns=>0, :base=>"Criterion"}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :ns=>0, :base=>"NumberValue"}, :AdGroupBidLandscape=>{:fields=>[{:type=>"AdGroupBidLandscape.Type", :max_occurs=>1, :min_occurs=>0, :name=>:type}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:landscape_current}], :ns=>0, :base=>"BidLandscape"}, :LongAttribute=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :BidLandscapeAttribute=>{:fields=>[{:type=>"BidLandscape", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Attribute=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:attribute_type}], :abstract=>true}, :AdFormatSpecListAttribute=>{:fields=>[{:type=>"AdFormatSpec", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Product=>{:fields=>[{:type=>"ProductCondition", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:conditions}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:text}], :ns=>0, :base=>"Criterion"}, :NumberValue=>{:fields=>[], :ns=>0, :abstract=>true, :base=>"ComparableValue"}, :OpportunityIdea=>{:fields=>[{:type=>"OpportunityAttribute_AttributeMapEntry", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:data}]}, :MonthlySearchVolumeAttribute=>{:fields=>[{:type=>"MonthlySearchVolume", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :IntegerSetAttribute=>{:fields=>[{:type=>"int", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}], :ns=>0}, :IdeaTypeAttribute=>{:fields=>[{:type=>"IdeaType", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :BulkOpportunityPage=>{:fields=>[{:type=>"Opportunity", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}]}, :CriterionUserInterest=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:user_interest_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_interest_name}], :ns=>0, :base=>"Criterion"}, :BidLandscape=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:start_date}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:end_date}, {:type=>"BidLandscape.LandscapePoint", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:landscape_points}], :ns=>0, :abstract=>true, :base=>"DataEntry"}, :Range=>{:fields=>[{:type=>"ComparableValue", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"ComparableValue", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :PlacementAttribute=>{:fields=>[{:type=>"Placement", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :OpportunityIdeaTypeAttribute=>{:fields=>[{:type=>"OpportunityIdeaType", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :KeywordAttribute=>{:fields=>[{:type=>"Keyword", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :DoubleAttribute=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}], :ns=>0}, :LongRangeAttribute=>{:fields=>[{:type=>"Range", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :InStreamAdInfo=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:max_ad_duration}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:min_ad_duration}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:median_ad_duration}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:pre_roll_percent}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:mid_roll_percent}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:post_roll_percent}]}, :BulkOpportunitySelector=>{:fields=>[{:type=>"OpportunityIdeaType", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:idea_types}, {:type=>"OpportunityAttributeType", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:requested_attribute_types}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :CriterionUserList=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:user_list_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_list_name}, {:type=>"CriterionUserList.MembershipStatus", :max_occurs=>1, :min_occurs=>0, :name=>:user_list_membership_status}], :ns=>0, :base=>"Criterion"}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}], :ns=>0}, :PlacementTypeAttribute=>{:fields=>[{:type=>"SiteConstants.PlacementType", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Placement=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:url}], :ns=>0, :base=>"Criterion"}, :CriterionBidLandscape=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:criterion_id}], :ns=>0, :base=>"BidLandscape"}, :InStreamAdInfoAttribute=>{:fields=>[{:type=>"InStreamAdInfo", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :CriterionAttribute=>{:fields=>[{:type=>"Criterion", :max_occurs=>1, :min_occurs=>0, :name=>:value}], :base=>"Attribute"}, :Vertical=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:path}], :ns=>0, :base=>"Criterion"}, :ProductConditionOperand=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :ns=>0}, :Criterion=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:criterion_type}], :ns=>0}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :ns=>0, :abstract=>true}, :"BidLandscape.LandscapePoint"=>{:fields=>[{:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:bid}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:clicks}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:marginal_cpc}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:impressions}], :ns=>0}, :WebpageDescriptor=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:url}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:title}]}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :ns=>0, :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :ns=>0, :base=>"NumberValue"}}
    BULKOPPORTUNITYSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201101"]

    def self.get_method_signature(method_name)
      return BULKOPPORTUNITYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BULKOPPORTUNITYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BULKOPPORTUNITYSERVICE_NAMESPACES[index]
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
