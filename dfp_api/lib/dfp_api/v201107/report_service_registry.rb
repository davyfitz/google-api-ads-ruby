#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:29:21.

require 'dfp_api/errors'

module DfpApi; module V201107; module ReportService
  class ReportServiceRegistry
    REPORTSERVICE_METHODS = {:get_report_job=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:report_job_id}], :output=>{:fields=>[{:type=>"ReportJob", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_report_job_response"}}, :run_report_job=>{:input=>[{:type=>"ReportJob", :min_occurs=>0, :max_occurs=>1, :name=>:report_job}], :output=>{:fields=>[{:type=>"ReportJob", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"run_report_job_response"}}, :get_report_download_url=>{:original_name=>"getReportDownloadURL", :input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:report_job_id}, {:type=>"ExportFormat", :min_occurs=>0, :max_occurs=>1, :name=>:export_format}], :output=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_report_download_url_response"}}}
    REPORTSERVICE_TYPES = {:ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ReportJob=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"ReportQuery", :min_occurs=>0, :max_occurs=>1, :name=>:report_query}, {:type=>"ReportJobStatus", :min_occurs=>0, :max_occurs=>1, :name=>:report_job_status}]}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :ReportQuery=>{:fields=>[{:type=>"Dimension", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:dimensions}, {:type=>"Column", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:columns}, {:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"DateRangeType", :min_occurs=>0, :max_occurs=>1, :name=>:date_range_type}, {:type=>"DimensionFilter", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:dimension_filters}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}}
    REPORTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return REPORTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return REPORTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return REPORTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
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
