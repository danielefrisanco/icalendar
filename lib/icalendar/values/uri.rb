require 'uri'

module Icalendar
  module Values

    class Uri < Value

      def initialize(value, params = {})
        parsed = URI.parse(value) rescue value
        super parsed, params
      end

      def value_ical
        value.to_s
      end

      def self.value_name
        'URI'
      end
    end

  end
end
