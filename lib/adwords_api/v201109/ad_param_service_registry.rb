#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:37:38.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module AdParamService
  class AdParamServiceRegistry
    ADPARAMSERVICE_METHODS = {:get=>{:input=>[{:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:service_selector}], :output=>{:fields=>[{:type=>"AdParamPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"AdParamOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"AdParam", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    ADPARAMSERVICE_TYPES = {:Selector=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:fields}, {:type=>"Predicate", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:predicates}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"OrderBy", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ordering}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :PolicyViolationKey=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:policy_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:violating_text}]}, :AdParam=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:ad_group_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:criterion_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:insertion_text}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:param_index}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :OrderBy=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"SortOrder", :max_occurs=>1, :min_occurs=>0, :name=>:sort_order}]}, :"PolicyViolationError.Part"=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:length}]}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :AdParamOperation=>{:fields=>[{:type=>"AdParam", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:service_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:method_name}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :AdParamPage=>{:fields=>[{:type=>"AdParam", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}]}, :Predicate=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"Predicate.Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:values}]}}
    ADPARAMSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADPARAMSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADPARAMSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADPARAMSERVICE_NAMESPACES[index]
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
