module Filemaker
  module Model
    module Types
      class BigDecimal
        def self.__filemaker_cast_to_ruby_object(value)
          return nil if value.nil?
          return value if value.is_a?(::BigDecimal)

          BigDecimal(value.to_s.squish)
        end

        def self.__filemaker_serialize_for_update(value)
          return nil if value.nil?
          return value if value.is_a?(::BigDecimal)

          BigDecimal(value.to_s.squish)
        end

        def self.__filemaker_serialize_for_query(value)
          return nil if value.nil?
          return value if value.is_a?(::BigDecimal)

          BigDecimal(value.to_s.squish)
        end
      end
    end
  end
end
