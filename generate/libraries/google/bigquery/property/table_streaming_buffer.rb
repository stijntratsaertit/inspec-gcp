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
  module BigQuery
    module Property
      class TableStreamingBuffer
        attr_reader :arguments

        attr_reader :estimated_bytes

        attr_reader :estimated_rows

        attr_reader :oldest_entry_time

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @estimated_bytes = arguments['estimatedBytes']
          @estimated_rows = arguments['estimatedRows']
          @oldest_entry_time = arguments['oldestEntryTime']
        end

        def to_s
          "#{@parent_identifier} TableStreamingBuffer"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'estimated_bytes' => ->(x, path) { x.nil? ? [] : ["its('#{path}.estimated_bytes') { should cmp #{x.inspect} }"] },
            'estimated_rows' => ->(x, path) { x.nil? ? [] : ["its('#{path}.estimated_rows') { should cmp #{x.inspect} }"] },
            'oldest_entry_time' => ->(x, path) { x.nil? ? [] : ["its('#{path}.oldest_entry_time') { should cmp #{x.inspect} }"] },
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
