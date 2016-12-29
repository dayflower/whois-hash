require "whois/hash/version"
require "whois"
require "whois-parser"

module Whois
  module ToHashExtension
    PROPS = Whois::Parser::PROPERTIES + [ :contacts ]
    ARRAY_PROPS = Hash[ [ :admin_contacts, :registrant_contacts, :technical_contacts,
                          :nameservers, :contacts ].map { |k| [ k, true ] } ]
    MANDATORY_PROPS = Hash[ [].map { |k| [ k, true ] } ]

    def to_h
      res = { :response => self.parts.map { |part| part.to_h } }

      r = parser
      unless r.registered?
        return { :available? => r.available?, :registered? => r.registered? }.merge(res)
      end

      Hash[
        PROPS.map { |key|
          begin
            v = r.__send__(key)
          rescue Whois::AttributeNotSupported, Whois::AttributeNotImplemented
            v = nil
          end

          case v
          when NilClass
            val = ARRAY_PROPS[key] ? [] : v
          when Array
            val = v.map { |x| x.is_a?(Struct) ? x.to_h : x }
          when Struct
            val = val.to_h
          else
            val = v
          end

          [ key, val ]
        }.select { |item| !item[1].nil? || MANDATORY_PROPS[item[0]] }
      ].merge(res)
    end
  end
end

Whois::Record.class_eval do
  include Whois::ToHashExtension
end
