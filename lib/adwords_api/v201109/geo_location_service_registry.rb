#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:38:40.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module GeoLocationService
  class GeoLocationServiceRegistry
    GEOLOCATIONSERVICE_METHODS = {:get=>{:input=>[{:type=>"GeoLocationSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"GeoLocation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}}
    GEOLOCATIONSERVICE_TYPES = {:GeoLocationSelector=>{:fields=>[{:type=>"Address", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:addresses}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :InvalidGeoLocation=>{:fields=>[], :base=>"GeoLocation"}, :Address=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address2}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:city_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:postal_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:service_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:method_name}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :GeoPoint=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:latitude_in_micro_degrees}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:longitude_in_micro_degrees}]}, :GeoLocation=>{:fields=>[{:type=>"GeoPoint", :max_occurs=>1, :min_occurs=>0, :name=>:geo_point}, {:type=>"Address", :max_occurs=>1, :min_occurs=>0, :name=>:address}, {:type=>"base64Binary", :max_occurs=>1, :min_occurs=>0, :name=>:encoded_location}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:geo_location_type}]}}
    GEOLOCATIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return GEOLOCATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return GEOLOCATIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return GEOLOCATIONSERVICE_NAMESPACES[index]
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
