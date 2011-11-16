#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:33:46.

require 'adwords_api/errors'

module AdwordsApi; module V201008; module ReportDefinitionService
  class ReportDefinitionServiceRegistry
    REPORTDEFINITIONSERVICE_METHODS = {:get=>{:input=>[{:type=>"ReportDefinitionSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"ReportDefinitionPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :get_report_fields=>{:input=>[{:type=>"ReportDefinition.ReportType", :max_occurs=>1, :min_occurs=>0, :name=>:report_type}], :output=>{:fields=>[{:type=>"ReportDefinitionField", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:rval}], :name=>"get_report_fields_response"}}, :mutate=>{:input=>[{:type=>"ReportDefinitionOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"ReportDefinition", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    REPORTDEFINITIONSERVICE_TYPES = {:Selector=>{:fields=>[{:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:fields}, {:type=>"Predicate", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:predicates}, {:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :ReportDefinitionSelector=>{:fields=>[{:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :ReportDefinition=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"Selector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:report_name}, {:type=>"ReportDefinition.ReportType", :max_occurs=>1, :min_occurs=>0, :name=>:report_type}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:has_attachment}, {:type=>"ReportDefinition.DateRangeType", :max_occurs=>1, :min_occurs=>0, :name=>:date_range_type}, {:type=>"DownloadFormat", :max_occurs=>1, :min_occurs=>0, :name=>:download_format}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:creation_time}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:partial_failure}]}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :ReportDefinitionOperation=>{:fields=>[{:type=>"ReportDefinition", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :ReportDefinitionPage=>{:fields=>[{:type=>"ReportDefinition", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}]}, :ReportDefinitionField=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:display_field_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:xml_attribute_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field_type}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:enum_values}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:can_select}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:can_filter}]}, :Predicate=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:field}, {:type=>"Predicate.Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:values}]}}
    REPORTDEFINITIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return REPORTDEFINITIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return REPORTDEFINITIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return REPORTDEFINITIONSERVICE_NAMESPACES[index]
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
