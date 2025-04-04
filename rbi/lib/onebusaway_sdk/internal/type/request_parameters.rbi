# typed: strong

module OnebusawaySDK
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::Util::AnyHash)) }
        attr_accessor :request_options

        # @api private
        module Converter
          # @api private
          sig { params(params: T.anything).returns([T.anything, OnebusawaySDK::Internal::Util::AnyHash]) }
          def dump_request(params)
          end
        end
      end
    end
  end
end
