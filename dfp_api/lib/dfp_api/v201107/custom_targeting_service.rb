#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:29:06.

require 'ads_common/savon_service'
require 'dfp_api/v201107/custom_targeting_service_registry'

module DfpApi; module V201107; module CustomTargetingService
  class CustomTargetingService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201107'
      super(api, endpoint, namespace, :v201107)
    end

    def perform_custom_targeting_key_action(*args, &block)
      return execute_action('perform_custom_targeting_key_action', args, &block)
    end

    def perform_custom_targeting_value_action(*args, &block)
      return execute_action('perform_custom_targeting_value_action', args, &block)
    end

    def create_custom_targeting_keys(*args, &block)
      return execute_action('create_custom_targeting_keys', args, &block)
    end

    def update_custom_targeting_keys(*args, &block)
      return execute_action('update_custom_targeting_keys', args, &block)
    end

    def create_custom_targeting_values(*args, &block)
      return execute_action('create_custom_targeting_values', args, &block)
    end

    def update_custom_targeting_values(*args, &block)
      return execute_action('update_custom_targeting_values', args, &block)
    end

    def get_custom_targeting_keys_by_statement(*args, &block)
      return execute_action('get_custom_targeting_keys_by_statement', args, &block)
    end

    def get_custom_targeting_values_by_statement(*args, &block)
      return execute_action('get_custom_targeting_values_by_statement', args, &block)
    end

    private

    def get_service_registry()
      return CustomTargetingServiceRegistry
    end

    def get_module()
      return DfpApi::V201107::CustomTargetingService
    end
  end
end; end; end
