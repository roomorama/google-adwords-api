#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.2 on 2011-10-20 20:36:17.

require 'adwords_api/errors'

module AdwordsApi; module V201003; module CampaignAdExtensionService
  class CampaignAdExtensionServiceRegistry
    CAMPAIGNADEXTENSIONSERVICE_METHODS = {:get=>{:input=>[{:type=>"CampaignAdExtensionSelector", :max_occurs=>1, :min_occurs=>0, :name=>:selector}], :output=>{:fields=>[{:type=>"CampaignAdExtensionPage", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"get_response"}}, :mutate=>{:input=>[{:type=>"CampaignAdExtensionOperation", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:operations}], :output=>{:fields=>[{:type=>"CampaignAdExtensionReturnValue", :max_occurs=>1, :min_occurs=>0, :name=>:rval}], :name=>"mutate_response"}}}
    CAMPAIGNADEXTENSIONSERVICE_TYPES = {:LocationSyncExtension=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:icon_media_id}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:should_sync_url}], :base=>"AdExtension"}, :Sitelink=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:display_text}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:destination_url}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:min}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:max}]}, :CampaignAdExtensionReturnValue=>{:fields=>[{:type=>"CampaignAdExtension", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:value}], :base=>"ListReturnValue"}, :MobileExtension=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:phone_number}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}], :base=>"AdExtension"}, :SitelinksExtension=>{:fields=>[{:type=>"Sitelink", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:sitelinks}], :base=>"AdExtension"}, :ListReturnValue=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:list_return_value_type}], :abstract=>true}, :AdExtension=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:ad_extension_type}]}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:auth_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_customer_id}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:client_email}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:developer_token}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:user_agent}, {:type=>"boolean", :max_occurs=>1, :min_occurs=>0, :name=>:validate_only}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :max_occurs=>1, :min_occurs=>0, :name=>:operator}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:operation_type}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:type=>"OperationAccessDenied.Reason", :max_occurs=>1, :min_occurs=>0, :name=>:reason}], :base=>"ApiError"}, :Address=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:street_address2}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:city_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:province_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:postal_code}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:country_code}]}, :CampaignAdExtension=>{:fields=>[{:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:campaign_id}, {:type=>"AdExtension", :max_occurs=>1, :min_occurs=>0, :name=>:ad_extension}, {:type=>"CampaignAdExtension.Status", :max_occurs=>1, :min_occurs=>0, :name=>:status}, {:type=>"CampaignAdExtension.ApprovalStatus", :max_occurs=>1, :min_occurs=>0, :name=>:approval_status}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:request_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:operations}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:response_time}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:units}]}, :GeoPoint=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:latitude_in_micro_degrees}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:longitude_in_micro_degrees}]}, :Page=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:total_num_entries}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:page_type}], :abstract=>true}, :CampaignAdExtensionSelector=>{:fields=>[{:type=>"CampaignAdExtensionStatsSelector", :max_occurs=>1, :min_occurs=>0, :name=>:stats_selector}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:campaign_ids}, {:type=>"long", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:ad_extension_ids}, {:type=>"CampaignAdExtension.Status", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:statuses}, {:type=>"Paging", :max_occurs=>1, :min_occurs=>0, :name=>:paging}]}, :Paging=>{:fields=>[{:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:start_index}, {:type=>"int", :max_occurs=>1, :min_occurs=>0, :name=>:number_results}]}, :CampaignAdExtensionOperation=>{:fields=>[{:type=>"CampaignAdExtension", :max_occurs=>1, :min_occurs=>0, :name=>:operand}], :base=>"Operation"}, :StatsSelector=>{:fields=>[{:type=>"DateRange", :max_occurs=>1, :min_occurs=>0, :name=>:date_range}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:stats_selector_type}]}, :LocationExtension=>{:fields=>[{:type=>"Address", :max_occurs=>1, :min_occurs=>0, :name=>:address}, {:type=>"GeoPoint", :max_occurs=>1, :min_occurs=>0, :name=>:geo_point}, {:type=>"base64Binary", :max_occurs=>1, :min_occurs=>0, :name=>:encoded_location}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:company_name}, {:type=>"string", :max_occurs=>1, :min_occurs=>0, :name=>:phone_number}, {:type=>"LocationExtension.Source", :max_occurs=>1, :min_occurs=>0, :name=>:source}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:icon_media_id}, {:type=>"long", :max_occurs=>1, :min_occurs=>0, :name=>:image_media_id}], :base=>"AdExtension"}, :CampaignAdExtensionStatsSelector=>{:fields=>[], :base=>"StatsSelector"}, :CampaignAdExtensionPage=>{:fields=>[{:type=>"CampaignAdExtension", :max_occurs=>:unbounded, :min_occurs=>0, :name=>:entries}], :base=>"Page"}}
    CAMPAIGNADEXTENSIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNADEXTENSIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNADEXTENSIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNADEXTENSIONSERVICE_NAMESPACES[index]
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
