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
  module Dataproc
    module Property
      class ClusterConfigSecurityConfigKerberosConfig
        attr_reader :arguments

        attr_reader :enable_kerberos

        attr_reader :rootprincipal_password_uri

        attr_reader :kms_key_uri

        attr_reader :keystore_uri

        attr_reader :truststore_uri

        attr_reader :key_password_uri

        attr_reader :truststore_password_uri

        attr_reader :cross_realm_trust_realm

        attr_reader :cross_realm_trust_admin_server

        attr_reader :cross_realm_trust_shared_password_uri

        attr_reader :kdc_db_key_uri

        attr_reader :tgt_lifetime_hours

        attr_reader :realm

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @enable_kerberos = arguments['enableKerberos']
          @rootprincipal_password_uri = arguments['rootprincipalPasswordUri']
          @kms_key_uri = arguments['kmsKeyUri']
          @keystore_uri = arguments['keystoreUri']
          @truststore_uri = arguments['truststoreUri']
          @key_password_uri = arguments['keyPasswordUri']
          @truststore_password_uri = arguments['truststorePasswordUri']
          @cross_realm_trust_realm = arguments['crossRealmTrustRealm']
          @cross_realm_trust_admin_server = arguments['crossRealmTrustAdminServer']
          @cross_realm_trust_shared_password_uri = arguments['crossRealmTrustSharedPasswordUri']
          @kdc_db_key_uri = arguments['kdcDbKeyUri']
          @tgt_lifetime_hours = arguments['tgtLifetimeHours']
          @realm = arguments['realm']
        end

        def to_s
          "#{@parent_identifier} ClusterConfigSecurityConfigKerberosConfig"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'enable_kerberos' => ->(x, path) { x.nil? ? [] : ["its('#{path}.enable_kerberos') { should cmp #{x.inspect} }"] },
            'rootprincipal_password_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.rootprincipal_password_uri') { should cmp #{x.inspect} }"] },
            'kms_key_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.kms_key_uri') { should cmp #{x.inspect} }"] },
            'keystore_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.keystore_uri') { should cmp #{x.inspect} }"] },
            'truststore_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.truststore_uri') { should cmp #{x.inspect} }"] },
            'key_password_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.key_password_uri') { should cmp #{x.inspect} }"] },
            'truststore_password_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.truststore_password_uri') { should cmp #{x.inspect} }"] },
            'cross_realm_trust_realm' => ->(x, path) { x.nil? ? [] : ["its('#{path}.cross_realm_trust_realm') { should cmp #{x.inspect} }"] },
            'cross_realm_trust_admin_server' => ->(x, path) { x.nil? ? [] : ["its('#{path}.cross_realm_trust_admin_server') { should cmp #{x.inspect} }"] },
            'cross_realm_trust_shared_password_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.cross_realm_trust_shared_password_uri') { should cmp #{x.inspect} }"] },
            'kdc_db_key_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.kdc_db_key_uri') { should cmp #{x.inspect} }"] },
            'tgt_lifetime_hours' => ->(x, path) { x.nil? ? [] : ["its('#{path}.tgt_lifetime_hours') { should cmp #{x.inspect} }"] },
            'realm' => ->(x, path) { x.nil? ? [] : ["its('#{path}.realm') { should cmp #{x.inspect} }"] },
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
