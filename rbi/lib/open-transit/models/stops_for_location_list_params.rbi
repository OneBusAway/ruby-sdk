# typed: strong

module OpenTransit
  module Models
    class StopsForLocationListParams < OpenTransit::BaseModel
      extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      sig { returns(Float) }
      attr_accessor :lat

      sig { returns(Float) }
      attr_accessor :lon

      sig { returns(T.nilable(Float)) }
      attr_reader :lat_span

      sig { params(lat_span: Float).void }
      attr_writer :lat_span

      sig { returns(T.nilable(Float)) }
      attr_reader :lon_span

      sig { params(lon_span: Float).void }
      attr_writer :lon_span

      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig { returns(T.nilable(Float)) }
      attr_reader :radius

      sig { params(radius: Float).void }
      attr_writer :radius

      sig do
        params(
          lat: Float,
          lon: Float,
          lat_span: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            lat: Float,
            lon: Float,
            lat_span: Float,
            lon_span: Float,
            query: String,
            radius: Float,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
