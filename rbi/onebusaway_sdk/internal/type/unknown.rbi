# typed: strong

module OnebusawaySDK
  module Internal
    module Type
      # @api private
      #
      # When we don't know what to expect for the value.
      class Unknown
        extend OnebusawaySDK::Internal::Type::Converter
        extend OnebusawaySDK::Internal::Util::SorbetRuntimeSupport

        abstract!

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.===(other)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.==(other)
        end

        class << self
          # @api private
          #
          # No coercion needed for Unknown type.
          sig do
            override
              .params(
                value: T.anything,
                state: OnebusawaySDK::Internal::Type::Converter::CoerceState
              )
              .returns(T.anything)
          end
          def coerce(value, state:)
          end

          # @api private
          sig do
            override
              .params(
                value: T.anything,
                state: OnebusawaySDK::Internal::Type::Converter::DumpState
              )
              .returns(T.anything)
          end
          def dump(value, state:)
          end

          # @api private
          sig { returns(T.anything) }
          def to_sorbet_type
          end
        end
      end
    end
  end
end
