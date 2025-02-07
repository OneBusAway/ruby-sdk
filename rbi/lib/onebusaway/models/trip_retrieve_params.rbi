# typed: strong

module Onebusaway
  module Models
    class TripRetrieveParams < Onebusaway::BaseModel
      extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      sig { params(request_options: T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: Onebusaway::RequestOptions}) }
      def to_hash
      end
    end
  end
end
