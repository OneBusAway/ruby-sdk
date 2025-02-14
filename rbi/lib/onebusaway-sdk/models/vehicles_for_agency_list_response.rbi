# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List]) }
        def list
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List]).returns(T::Array[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List])
        end
        def list=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List],
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List],
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end

        class List < OnebusawaySDK::BaseModel
          sig { returns(Integer) }
          def last_location_update_time
          end

          sig { params(_: Integer).returns(Integer) }
          def last_location_update_time=(_)
          end

          sig { returns(Integer) }
          def last_update_time
          end

          sig { params(_: Integer).returns(Integer) }
          def last_update_time=(_)
          end

          sig { returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location) }
          def location
          end

          sig do
            params(_: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location)
          end
          def location=(_)
          end

          sig { returns(String) }
          def trip_id
          end

          sig { params(_: String).returns(String) }
          def trip_id=(_)
          end

          sig { returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus) }
          def trip_status
          end

          sig do
            params(_: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus)
          end
          def trip_status=(_)
          end

          sig { returns(String) }
          def vehicle_id
          end

          sig { params(_: String).returns(String) }
          def vehicle_id=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def occupancy_capacity
          end

          sig { params(_: Integer).returns(Integer) }
          def occupancy_capacity=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def occupancy_count
          end

          sig { params(_: Integer).returns(Integer) }
          def occupancy_count=(_)
          end

          sig { returns(T.nilable(String)) }
          def occupancy_status
          end

          sig { params(_: String).returns(String) }
          def occupancy_status=(_)
          end

          sig { returns(T.nilable(String)) }
          def phase
          end

          sig { params(_: String).returns(String) }
          def phase=(_)
          end

          sig { returns(T.nilable(String)) }
          def status
          end

          sig { params(_: String).returns(String) }
          def status=(_)
          end

          sig do
            params(
              last_location_update_time: Integer,
              last_update_time: Integer,
              location: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location,
              trip_id: String,
              trip_status: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus,
              vehicle_id: String,
              occupancy_capacity: Integer,
              occupancy_count: Integer,
              occupancy_status: String,
              phase: String,
              status: String
            ).void
          end
          def initialize(
            last_location_update_time:,
            last_update_time:,
            location:,
            trip_id:,
            trip_status:,
            vehicle_id:,
            occupancy_capacity: nil,
            occupancy_count: nil,
            occupancy_status: nil,
            phase: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                last_location_update_time: Integer,
                last_update_time: Integer,
                location: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location,
                trip_id: String,
                trip_status: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus,
                vehicle_id: String,
                occupancy_capacity: Integer,
                occupancy_count: Integer,
                occupancy_status: String,
                phase: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Location < OnebusawaySDK::BaseModel
            sig { returns(T.nilable(Float)) }
            def lat
            end

            sig { params(_: Float).returns(Float) }
            def lat=(_)
            end

            sig { returns(T.nilable(Float)) }
            def lon
            end

            sig { params(_: Float).returns(Float) }
            def lon=(_)
            end

            sig { params(lat: Float, lon: Float).void }
            def initialize(lat: nil, lon: nil)
            end

            sig { override.returns({lat: Float, lon: Float}) }
            def to_hash
            end
          end

          class TripStatus < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def active_trip_id
            end

            sig { params(_: String).returns(String) }
            def active_trip_id=(_)
            end

            sig { returns(Integer) }
            def block_trip_sequence
            end

            sig { params(_: Integer).returns(Integer) }
            def block_trip_sequence=(_)
            end

            sig { returns(String) }
            def closest_stop
            end

            sig { params(_: String).returns(String) }
            def closest_stop=(_)
            end

            sig { returns(Float) }
            def distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def distance_along_trip=(_)
            end

            sig { returns(Float) }
            def last_known_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def last_known_distance_along_trip=(_)
            end

            sig { returns(Integer) }
            def last_location_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_location_update_time=(_)
            end

            sig { returns(Integer) }
            def last_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_update_time=(_)
            end

            sig { returns(Integer) }
            def occupancy_capacity
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_capacity=(_)
            end

            sig { returns(Integer) }
            def occupancy_count
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_count=(_)
            end

            sig { returns(String) }
            def occupancy_status
            end

            sig { params(_: String).returns(String) }
            def occupancy_status=(_)
            end

            sig { returns(String) }
            def phase
            end

            sig { params(_: String).returns(String) }
            def phase=(_)
            end

            sig { returns(T::Boolean) }
            def predicted
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def predicted=(_)
            end

            sig { returns(Integer) }
            def schedule_deviation
            end

            sig { params(_: Integer).returns(Integer) }
            def schedule_deviation=(_)
            end

            sig { returns(Integer) }
            def service_date
            end

            sig { params(_: Integer).returns(Integer) }
            def service_date=(_)
            end

            sig { returns(String) }
            def status
            end

            sig { params(_: String).returns(String) }
            def status=(_)
            end

            sig { returns(Float) }
            def total_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def total_distance_along_trip=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def closest_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def closest_stop_time_offset=(_)
            end

            sig { returns(T.nilable(String)) }
            def frequency
            end

            sig { params(_: String).returns(String) }
            def frequency=(_)
            end

            sig do
              returns(T.nilable(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation))
            end
            def last_known_location
            end

            sig do
              params(_: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation)
            end
            def last_known_location=(_)
            end

            sig { returns(T.nilable(Float)) }
            def last_known_orientation
            end

            sig { params(_: Float).returns(Float) }
            def last_known_orientation=(_)
            end

            sig { returns(T.nilable(String)) }
            def next_stop
            end

            sig { params(_: String).returns(String) }
            def next_stop=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def next_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def next_stop_time_offset=(_)
            end

            sig { returns(T.nilable(Float)) }
            def orientation
            end

            sig { params(_: Float).returns(Float) }
            def orientation=(_)
            end

            sig do
              returns(T.nilable(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position))
            end
            def position
            end

            sig do
              params(_: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position).returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position)
            end
            def position=(_)
            end

            sig { returns(T.nilable(Float)) }
            def scheduled_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def scheduled_distance_along_trip=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def situation_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def situation_ids=(_)
            end

            sig { returns(T.nilable(String)) }
            def vehicle_id
            end

            sig { params(_: String).returns(String) }
            def vehicle_id=(_)
            end

            sig do
              params(
                active_trip_id: String,
                block_trip_sequence: Integer,
                closest_stop: String,
                distance_along_trip: Float,
                last_known_distance_along_trip: Float,
                last_location_update_time: Integer,
                last_update_time: Integer,
                occupancy_capacity: Integer,
                occupancy_count: Integer,
                occupancy_status: String,
                phase: String,
                predicted: T::Boolean,
                schedule_deviation: Integer,
                service_date: Integer,
                status: String,
                total_distance_along_trip: Float,
                closest_stop_time_offset: Integer,
                frequency: String,
                last_known_location: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position,
                scheduled_distance_along_trip: Float,
                situation_ids: T::Array[String],
                vehicle_id: String
              ).void
            end
            def initialize(
              active_trip_id:,
              block_trip_sequence:,
              closest_stop:,
              distance_along_trip:,
              last_known_distance_along_trip:,
              last_location_update_time:,
              last_update_time:,
              occupancy_capacity:,
              occupancy_count:,
              occupancy_status:,
              phase:,
              predicted:,
              schedule_deviation:,
              service_date:,
              status:,
              total_distance_along_trip:,
              closest_stop_time_offset: nil,
              frequency: nil,
              last_known_location: nil,
              last_known_orientation: nil,
              next_stop: nil,
              next_stop_time_offset: nil,
              orientation: nil,
              position: nil,
              scheduled_distance_along_trip: nil,
              situation_ids: nil,
              vehicle_id: nil
            )
            end

            sig do
              override.returns(
                {
                  active_trip_id: String,
                  block_trip_sequence: Integer,
                  closest_stop: String,
                  distance_along_trip: Float,
                  last_known_distance_along_trip: Float,
                  last_location_update_time: Integer,
                  last_update_time: Integer,
                  occupancy_capacity: Integer,
                  occupancy_count: Integer,
                  occupancy_status: String,
                  phase: String,
                  predicted: T::Boolean,
                  schedule_deviation: Integer,
                  service_date: Integer,
                  status: String,
                  total_distance_along_trip: Float,
                  closest_stop_time_offset: Integer,
                  frequency: String,
                  last_known_location: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position,
                  scheduled_distance_along_trip: Float,
                  situation_ids: T::Array[String],
                  vehicle_id: String
                }
              )
            end
            def to_hash
            end

            class LastKnownLocation < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              sig { params(lat: Float, lon: Float).void }
              def initialize(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end

            class Position < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              sig { params(lat: Float, lon: Float).void }
              def initialize(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
