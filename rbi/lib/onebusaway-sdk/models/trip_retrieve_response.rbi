# typed: strong

module OnebusawaySDK
  module Models
    class TripRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::TripRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::TripRetrieveResponse::Data)
          .returns(OnebusawaySDK::Models::TripRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::TripRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::TripRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry)
            .returns(OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry)
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          )
            .void
        end
        def initialize(entry:, references:)
        end

        sig do
          override
            .returns(
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
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def route_id
          end

          sig { params(_: String).returns(String) }
          def route_id=(_)
          end

          sig { returns(String) }
          def service_id
          end

          sig { params(_: String).returns(String) }
          def service_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def block_id
          end

          sig { params(_: String).returns(String) }
          def block_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def direction_id
          end

          sig { params(_: String).returns(String) }
          def direction_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def peak_offpeak
          end

          sig { params(_: Integer).returns(Integer) }
          def peak_offpeak=(_)
          end

          sig { returns(T.nilable(String)) }
          def route_short_name
          end

          sig { params(_: String).returns(String) }
          def route_short_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def shape_id
          end

          sig { params(_: String).returns(String) }
          def shape_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def time_zone
          end

          sig { params(_: String).returns(String) }
          def time_zone=(_)
          end

          sig { returns(T.nilable(String)) }
          def trip_headsign
          end

          sig { params(_: String).returns(String) }
          def trip_headsign=(_)
          end

          sig { returns(T.nilable(String)) }
          def trip_short_name
          end

          sig { params(_: String).returns(String) }
          def trip_short_name=(_)
          end

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
            )
              .void
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
            override
              .returns(
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
