#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:36:10.

require 'adwords_api/errors'

module AdwordsApi; module V201101; module CampaignTargetService
  class CampaignTargetServiceRegistry
    CAMPAIGNTARGETSERVICE_METHODS = {:get=>{:input=>[{:type=>"CampaignTargetSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"CampaignTargetPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"CampaignTargetOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"CampaignTargetReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    CAMPAIGNTARGETSERVICE_TYPES = {:DemographicTargetList=>{:fields=>[{:type=>"DemographicTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :AgeTarget=>{:fields=>[{:type=>"AgeTarget.Age", :max_occurs=>1, :min_occurs=>0, :name=>:age}], :base=>"DemographicTarget"}, :AdScheduleTargetList=>{:fields=>[{:type=>"AdScheduleTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :LanguageTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:language_code}], :base=>"Target"}, :TargetList=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:target_list_type}], :abstract=>true}, :PlatformTarget=>{:fields=>[{:type=>"PlatformType", :max_occurs=>1, :min_occurs=>0, :name=>:platform_type}], :base=>"Target"}, :CityTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:city_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}], :base=>"GeoTarget"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :MetroTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:metro_code}], :base=>"GeoTarget"}, :MobileTargetList=>{:fields=>[{:type=>"MobileTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :PolygonTarget=>{:fields=>[{:type=>"GeoPoint", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:vertices}], :base=>"GeoTarget"}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :CountryTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}], :base=>"GeoTarget"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :CampaignTargetSelector=>{:fields=>[{:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:campaign_ids}]}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :MobileCarrierTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:carrier_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}], :base=>"MobileTarget"}, :Address=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address2}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:city_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:postal_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}]}, :GeoTargetList=>{:fields=>[{:type=>"GeoTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :DemographicTarget=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:bid_modifier}], :abstract=>true, :base=>"Target"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :ProvinceTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}], :base=>"GeoTarget"}, :GeoPoint=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:latitude_in_micro_degrees}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:longitude_in_micro_degrees}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :CampaignTargetPage=>{:fields=>[{:type=>"TargetList", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}, :CampaignTargetOperation=>{:fields=>[{:type=>"TargetList", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :MobilePlatformTarget=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:platform_name}], :base=>"MobileTarget"}, :ProximityTarget=>{:fields=>[{:type=>"GeoPoint", :max_occurs=>1, :min_occurs=>0, :name=>:geo_point}, {:type=>"ProximityTarget.DistanceUnits", :max_occurs=>1, :min_occurs=>0, :name=>:radius_distance_units}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:radius_in_units}, {:type=>"Address", :max_occurs=>1, :min_occurs=>0, :name=>:address}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:allow_service_of_address}], :base=>"GeoTarget"}, :GenderTarget=>{:fields=>[{:type=>"GenderTarget.Gender", :max_occurs=>1, :min_occurs=>0, :name=>:gender}], :base=>"DemographicTarget"}, :CampaignTargetReturnValue=>{:fields=>[{:type=>"TargetList", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :PlatformTargetList=>{:fields=>[{:type=>"PlatformTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :LanguageTargetList=>{:fields=>[{:type=>"LanguageTarget", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:targets}], :base=>"TargetList"}, :MobileTarget=>{:fields=>[], :abstract=>true, :base=>"Target"}, :AdScheduleTarget=>{:fields=>[{:type=>"DayOfWeek", :max_occurs=>1, :min_occurs=>0, :name=>:day_of_week}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_hour}, {:type=>"MinuteOfHour", :max_occurs=>1, :min_occurs=>0, :name=>:start_minute}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:end_hour}, {:type=>"MinuteOfHour", :max_occurs=>1, :min_occurs=>0, :name=>:end_minute}, {:type=>"double", :max_occurs=>1, :min_occurs=>0, :name=>:bid_multiplier}], :base=>"Target"}, :Target=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:target_type}], :abstract=>true}, :GeoTarget=>{:fields=>[{:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:excluded}], :abstract=>true, :base=>"Target"}}
    CAMPAIGNTARGETSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNTARGETSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNTARGETSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNTARGETSERVICE_NAMESPACES[index]
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
