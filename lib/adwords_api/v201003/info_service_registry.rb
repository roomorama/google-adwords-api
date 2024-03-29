#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:37:14.

require 'adwords_api/errors'

module AdwordsApi; module V201003; module InfoService
  class InfoServiceRegistry
    INFOSERVICE_METHODS = {:get=>{:input=>[{:type=>"InfoSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"ApiUsageInfo", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}}
    INFOSERVICE_TYPES = {:DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}], :ns=>0}, :InfoSelector=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:service_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:method_name}, {:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:client_emails}, {:type=>"ApiUsageType", :max_occurs=>1, :min_occurs=>0, :name=>:api_usage_type}]}, :ApiUsageInfo=>{:fields=>[{:type=>"ApiUsageRecord", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:api_usage_records}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:cost}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}], :ns=>0}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :ns=>0, :base=>"ApiError"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}], :ns=>0}, :ApiUsageRecord=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:cost}]}}
    INFOSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201003"]

    def self.get_method_signature(method_name)
      return INFOSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INFOSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INFOSERVICE_NAMESPACES[index]
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
