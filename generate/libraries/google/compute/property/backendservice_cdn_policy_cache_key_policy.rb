# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module Compute
    module Property
      class BackendServiceCdnPolicyCacheKeyPolicy
        attr_reader :arguments

        attr_reader :include_host

        attr_reader :include_protocol

        attr_reader :include_query_string

        attr_reader :query_string_blacklist

        attr_reader :query_string_whitelist

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @include_host = arguments['includeHost']
          @include_protocol = arguments['includeProtocol']
          @include_query_string = arguments['includeQueryString']
          @query_string_blacklist = arguments['queryStringBlacklist']
          @query_string_whitelist = arguments['queryStringWhitelist']
        end

        def to_s
          "#{@parent_identifier} BackendServiceCdnPolicyCacheKeyPolicy"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'include_host' => ->(x, path) { x.nil? ? [] : ["its('#{path}.include_host') { should cmp #{x.inspect} }"] },
            'include_protocol' => ->(x, path) { x.nil? ? [] : ["its('#{path}.include_protocol') { should cmp #{x.inspect} }"] },
            'include_query_string' => ->(x, path) { x.nil? ? [] : ["its('#{path}.include_query_string') { should cmp #{x.inspect} }"] },
            'query_string_blacklist' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.query_string_blacklist') { should include #{single.inspect} }" } },
            'query_string_whitelist' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.query_string_whitelist') { should include #{single.inspect} }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
