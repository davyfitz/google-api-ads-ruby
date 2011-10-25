#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:30:44.

require 'ads_common/savon_service'
require 'dfp_api/v201103/inventory_service_registry'

module DfpApi; module V201103; module InventoryService
  class InventoryService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201103'
      super(api, endpoint, namespace, :v201103)
    end

    def update_ad_unit(*args, &block)
      return execute_action('update_ad_unit', args, &block)
    end

    def create_ad_units(*args, &block)
      return execute_action('create_ad_units', args, &block)
    end

    def update_ad_units(*args, &block)
      return execute_action('update_ad_units', args, &block)
    end

    def get_ad_unit(*args, &block)
      return execute_action('get_ad_unit', args, &block)
    end

    def get_ad_units_by_statement(*args, &block)
      return execute_action('get_ad_units_by_statement', args, &block)
    end

    def perform_ad_unit_action(*args, &block)
      return execute_action('perform_ad_unit_action', args, &block)
    end

    def create_ad_unit(*args, &block)
      return execute_action('create_ad_unit', args, &block)
    end

    private

    def get_service_registry()
      return InventoryServiceRegistry
    end

    def get_module()
      return DfpApi::V201103::InventoryService
    end
  end
end; end; end
