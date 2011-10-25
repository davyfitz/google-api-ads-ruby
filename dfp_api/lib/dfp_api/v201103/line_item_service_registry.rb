#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:30:35.

require 'dfp_api/errors'

module DfpApi; module V201103; module LineItemService
  class LineItemServiceRegistry
    LINEITEMSERVICE_METHODS = {:create_line_items=>{:input=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:line_items}], :output=>{:fields=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_line_items_response"}}, :get_line_item=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_id}], :output=>{:fields=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_item_response"}}, :get_line_items_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"LineItemPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_items_by_statement_response"}}, :perform_line_item_action=>{:input=>[{:type=>"LineItemAction", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_line_item_action_response"}}, :update_line_item=>{:input=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>1, :name=>:line_item}], :output=>{:fields=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_line_item_response"}}, :create_line_item=>{:input=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>1, :name=>:line_item}], :output=>{:fields=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_line_item_response"}}, :update_line_items=>{:input=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:line_items}], :output=>{:fields=>[{:type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_line_items_response"}}}
    LINEITEMSERVICE_TYPES = {:ReserveAndOverbookLineItems=>{:fields=>[], :base=>"ReserveLineItems"}, :LineItem=>{:fields=>[{:type=>"Targeting", :min_occurs=>0, :max_occurs=>1, :name=>:targeting}], :base=>"LineItemSummary"}, :CustomCriteriaNode=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:custom_criteria_node_type}], :abstract=>true}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :Targeting=>{:fields=>[{:type=>"GeoTargeting", :min_occurs=>0, :max_occurs=>1, :name=>:geo_targeting}, {:type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1, :name=>:inventory_targeting}, {:type=>"DayPartTargeting", :min_occurs=>0, :max_occurs=>1, :name=>:day_part_targeting}, {:type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting}, {:type=>"UserDomainTargeting", :min_occurs=>0, :max_occurs=>1, :name=>:user_domain_targeting}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :FrequencyCap=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:max_impressions}, {:type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1, :name=>:time_unit}]}, :CityLocation=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:region_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"Location"}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :ReserveLineItems=>{:fields=>[], :base=>"LineItemAction"}, :LineItemPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :DayPart=>{:fields=>[{:type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1, :name=>:day_of_week}, {:type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1, :name=>:start_time}, {:type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1, :name=>:end_time}]}, :PauseLineItems=>{:fields=>[], :base=>"LineItemAction"}, :GeoTargeting=>{:fields=>[{:type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targeted_locations}, {:type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_locations}]}, :FreeFormCustomCriteria=>{:fields=>[{:type=>"CustomTargetingValue", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}], :base=>"CustomCriteria"}, :CountryLocation=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"Location"}, :ResumeAndOverbookLineItems=>{:fields=>[], :base=>"ResumeLineItems"}, :LineItemSummary=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:order_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:order_name}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time_type}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:unlimited_end_date_time}, {:type=>"CreativeRotationType", :min_occurs=>0, :max_occurs=>1, :name=>:creative_rotation_type}, {:type=>"DeliveryRateType", :min_occurs=>0, :max_occurs=>1, :name=>:delivery_rate_type}, {:type=>"RoadblockingType", :min_occurs=>0, :max_occurs=>1, :name=>:roadblocking_type}, {:type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:frequency_caps}, {:type=>"LineItemType", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_type}, {:type=>"UnitType", :min_occurs=>0, :max_occurs=>1, :name=>:unit_type}, {:type=>"LineItemSummary.Duration", :min_occurs=>0, :max_occurs=>1, :name=>:duration}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units_bought}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_unit}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:value_cost_per_unit}, {:type=>"CostType", :min_occurs=>0, :max_occurs=>1, :name=>:cost_type}, {:type=>"LineItemDiscountType", :min_occurs=>0, :max_occurs=>1, :name=>:discount_type}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:discount}, {:type=>"Size", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:creative_sizes}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:allow_overbook}, {:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}, {:type=>"DeliveryIndicator", :min_occurs=>0, :max_occurs=>1, :name=>:delivery_indicator}, {:type=>"DeliveryData", :min_occurs=>0, :max_occurs=>1, :name=>:delivery_data}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:budget}, {:type=>"ComputedStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"LineItemSummary.ReservationStatus", :min_occurs=>0, :max_occurs=>1, :name=>:reservation_status}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_archived}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_summary_type}]}, :DayPartTargeting=>{:fields=>[{:type=>"DayPart", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:day_parts}, {:type=>"DeliveryTimeZone", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :TimeOfDay=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1, :name=>:minute}]}, :PredefinedCustomCriteria=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:value_ids}], :base=>"CustomCriteria"}, :InventoryTargeting=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targeted_ad_unit_ids}, {:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:excluded_ad_unit_ids}, {:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:targeted_placement_ids}]}, :ActivateLineItems=>{:fields=>[], :base=>"LineItemAction"}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ResumeLineItems=>{:fields=>[], :base=>"LineItemAction"}, :Location=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:location_type}]}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :UnarchiveLineItems=>{:fields=>[], :base=>"LineItemAction"}, :RegionLocation=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:region_code}], :base=>"Location"}, :CustomCriteria=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:key_id}, {:type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}], :base=>"CustomCriteriaNode"}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :Size=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_aspect_ratio}]}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :MetroLocation=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:metro_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"Location"}, :DeliveryData=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:units}]}, :UserDomainTargeting=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:domains}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:targeted}]}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ReleaseLineItems=>{:fields=>[], :base=>"LineItemAction"}, :LineItemAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_action_type}], :abstract=>true}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :CustomTargetingValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:custom_targeting_key_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_name}, {:type=>"CustomTargetingValue.MatchType", :min_occurs=>0, :max_occurs=>1, :name=>:match_type}]}, :CustomCriteriaSet=>{:fields=>[{:type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1, :name=>:logical_operator}, {:type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:children}], :base=>"CustomCriteriaNode"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ArchiveLineItems=>{:fields=>[], :base=>"LineItemAction"}, :Stats=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks_delivered}]}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :DeliveryIndicator=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:expected_delivery_percentage}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:actual_delivery_percentage}]}}
    LINEITEMSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LINEITEMSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LINEITEMSERVICE_NAMESPACES[index]
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
