# typed: strong

module OnebusawaySDK
  module Internal
    module Type
      # @api private
      module Union
        include OnebusawaySDK::Internal::Type::Converter
        include OnebusawaySDK::Internal::Util::SorbetRuntimeSupport

        # @api private
        #
        # All of the specified variant info for this union.
        sig do
          returns(
            T::Array[
              [
                T.nilable(Symbol),
                T.proc.returns(OnebusawaySDK::Internal::Type::Converter::Input)
              ]
            ]
          )
        end
        private def known_variants
        end

        # @api private
        sig { returns(T::Array[[T.nilable(Symbol), T.anything]]) }
        protected def derefed_variants
        end

        # All of the specified variants for this union.
        sig { overridable.returns(T::Array[T.anything]) }
        def variants
        end

        # @api private
        sig { params(property: Symbol).void }
        private def discriminator(property)
        end

        # @api private
        sig do
          params(
            key:
              T.any(
                Symbol,
                OnebusawaySDK::Internal::AnyHash,
                T.proc.returns(T.anything),
                T.anything
              ),
            spec:
              T.any(
                OnebusawaySDK::Internal::AnyHash,
                T.proc.returns(T.anything),
                T.anything
              )
          ).void
        end
        private def variant(key, spec = nil)
        end

        # @api private
        sig { params(value: T.anything).returns(T.nilable(T.anything)) }
        private def resolve_variant(value)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ===(other)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ==(other)
        end

        sig { returns(Integer) }
        def hash
        end

        # @api private
        #
        # Tries to efficiently coerce the given value to one of the known variants.
        #
        # If the value cannot match any of the known variants, the coercion is considered
        # non-viable and returns the original value.
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

        # @api private
        sig { params(depth: Integer).returns(String) }
        def inspect(depth: 0)
        end
      end
    end
  end
end
