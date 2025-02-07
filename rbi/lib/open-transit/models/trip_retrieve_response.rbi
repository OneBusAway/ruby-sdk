# typed: strong

module OpenTransit
  module Models
    class TripRetrieveResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::TripRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::TripRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::TripRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::TripRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::TripRetrieveResponse::Data::Entry,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::TripRetrieveResponse::Data::Entry,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :route_id

          sig { returns(String) }
          attr_accessor :service_id

          sig { returns(T.nilable(String)) }
          attr_reader :block_id

          sig { params(block_id: String).void }
          attr_writer :block_id

          sig { returns(T.nilable(String)) }
          attr_reader :direction_id

          sig { params(direction_id: String).void }
          attr_writer :direction_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :peak_offpeak

          sig { params(peak_offpeak: Integer).void }
          attr_writer :peak_offpeak

          sig { returns(T.nilable(String)) }
          attr_reader :route_short_name

          sig { params(route_short_name: String).void }
          attr_writer :route_short_name

          sig { returns(T.nilable(String)) }
          attr_reader :shape_id

          sig { params(shape_id: String).void }
          attr_writer :shape_id

          sig { returns(T.nilable(String)) }
          attr_reader :time_zone

          sig { params(time_zone: String).void }
          attr_writer :time_zone

          sig { returns(T.nilable(String)) }
          attr_reader :trip_headsign

          sig { params(trip_headsign: String).void }
          attr_writer :trip_headsign

          sig { returns(T.nilable(String)) }
          attr_reader :trip_short_name

          sig { params(trip_short_name: String).void }
          attr_writer :trip_short_name

          sig do
            params(
              id: String,
              route_id: String,
              service_id: String,
              block_id: String,
              direction_id: String,
              peak_offpeak: Integer,
              route_short_name: String,
              shape_id: String,
              time_zone: String,
              trip_headsign: String,
              trip_short_name: String
            ).void
          end
          def initialize(
            id:,
            route_id:,
            service_id:,
            block_id: nil,
            direction_id: nil,
            peak_offpeak: nil,
            route_short_name: nil,
            shape_id: nil,
            time_zone: nil,
            trip_headsign: nil,
            trip_short_name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                route_id: String,
                service_id: String,
                block_id: String,
                direction_id: String,
                peak_offpeak: Integer,
                route_short_name: String,
                shape_id: String,
                time_zone: String,
                trip_headsign: String,
                trip_short_name: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
