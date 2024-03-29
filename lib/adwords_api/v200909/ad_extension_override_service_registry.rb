#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:39:59.

require 'adwords_api/errors'

module AdwordsApi; module V200909; module AdExtensionOverrideService
  class AdExtensionOverrideServiceRegistry
    ADEXTENSIONOVERRIDESERVICE_METHODS = {:get=>{:input=>[{:type=>"AdExtensionOverrideSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"AdExtensionOverridePage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"AdExtensionOverrideOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"AdExtensionOverrideReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    ADEXTENSIONOVERRIDESERVICE_TYPES = {:AdExtensionOverridePage=>{:fields=>[{:type=>"AdExtensionOverride", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}, :LocationOverrideInfo=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:radius}, {:type=>"LocationOverrideInfo.RadiusUnits", :max_occurs=>1, :min_occurs=>0, :name=>:radius_units}]}, :AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :AdExtensionOverrideReturnValue=>{:fields=>[{:type=>"AdExtensionOverride", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :Stats=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:start_date}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:end_date}, {:type=>"Stats.Network", :max_occurs=>1, :min_occurs=>0, :name=>:network}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:clicks}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:impressions}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:average_position}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpc}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:average_cpm}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:ctr}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:conversions_many_per_click}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :max_occurs=>1, :min_occurs=>0, :name=>:cost_per_conversion_many_per_click}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:stats_type}]}, :DoubleValue=>{:fields=>[{:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :AdExtension=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:ad_extension_type}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:application_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :Address=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address2}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:city_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:postal_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :GeoPoint=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:latitude_in_micro_degrees}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:longitude_in_micro_degrees}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :OverrideInfo=>{:fields=>[]}, :AdExtensionOverride=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:ad_id}, {:type=>"AdExtension", :max_occurs=>1, :min_occurs=>0, :name=>:ad_extension}, {:type=>"OverrideInfo", :max_occurs=>1, :min_occurs=>0, :name=>:override_info}, {:type=>"AdExtensionOverride.Status", :max_occurs=>1, :min_occurs=>0, :name=>:status}, {:type=>"AdExtensionOverride.ApprovalStatus", :max_occurs=>1, :min_occurs=>0, :name=>:approval_status}, {:type=>"AdExtensionOverrideStats", :max_occurs=>1, :min_occurs=>0, :name=>:stats}]}, :LocationExtension=>{:fields=>[{:type=>"Address", :max_occurs=>1, :min_occurs=>0, :name=>:address}, {:type=>"GeoPoint", :max_occurs=>1, :min_occurs=>0, :name=>:geo_point}, {:type=>"base64Binary", :max_occurs=>1, :min_occurs=>0, :name=>:encoded_location}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:company_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:phone_number}, {:type=>"LocationExtension.Source", :max_occurs=>1, :min_occurs=>0, :name=>:source}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:icon_media_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:image_media_id}], :base=>"AdExtension"}, :ComparableValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:comparable_value_type}], :abstract=>true}, :AdExtensionOverrideSelector=>{:fields=>[{:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:campaign_ids}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ad_ids}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ad_extension_ids}, {:type=>"AdExtensionOverride.Status", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:statuses}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :AdExtensionOverrideOperation=>{:fields=>[{:type=>"AdExtensionOverride", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :Money=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:micro_amount}], :base=>"ComparableValue"}, :LongValue=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:number}], :base=>"NumberValue"}}
    ADEXTENSIONOVERRIDESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADEXTENSIONOVERRIDESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADEXTENSIONOVERRIDESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADEXTENSIONOVERRIDESERVICE_NAMESPACES[index]
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
