# typed: strong

module OnebusawaySDK
  module Models
    class TripRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::TripRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OnebusawaySDK::Models::TripRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::TripRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
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
