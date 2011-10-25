#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:27:11.

require 'dfp_api/errors'

module DfpApi; module V201108; module LabelService
  class LabelServiceRegistry
    LABELSERVICE_METHODS = {:update_labels=>{:input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:labels}], :output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_labels_response"}}, :create_labels=>{:input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:labels}], :output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_labels_response"}}, :get_label=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:label_id}], :output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_label_response"}}, :get_labels_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"LabelPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_labels_by_statement_response"}}, :perform_label_action=>{:input=>[{:type=>"LabelAction", :min_occurs=>0, :max_occurs=>1, :name=>:label_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_label_action_response"}}, :update_label=>{:input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:label}], :output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_label_response"}}, :create_label=>{:input=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:label}], :output=>{:fields=>[{:type=>"Label", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_label_response"}}}
    LABELSERVICE_TYPES = {:ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :ActivateLabels=>{:fields=>[], :base=>"LabelAction"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :DeactivateLabels=>{:fields=>[], :base=>"LabelAction"}, :LabelAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:label_action_type}], :abstract=>true}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :Label=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_active}, {:type=>"LabelType", :min_occurs=>0, :max_occurs=>1, :name=>:type}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :LabelPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}}
    LABELSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LABELSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LABELSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LABELSERVICE_NAMESPACES[index]
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
