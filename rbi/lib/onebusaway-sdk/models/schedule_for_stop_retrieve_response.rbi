# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForStopRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(Integer) }
          attr_accessor :date

          sig { returns(String) }
          attr_accessor :stop_id

          sig do
            returns(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule])
          end
          attr_accessor :stop_route_schedules

          sig do
            params(
              date: Integer,
              stop_id: String,
              stop_route_schedules: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]
            ).void
          end
          def initialize(date:, stop_id:, stop_route_schedules:)
          end

          sig do
            override.returns(
              {
                date: Integer,
                stop_id: String,
                stop_route_schedules: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]
              }
            )
          end
          def to_hash
          end

          class StopRouteSchedule < OnebusawaySDK::BaseModel
            sig { returns(String) }
            attr_accessor :route_id

            sig do
              returns(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule])
            end
            attr_accessor :stop_route_direction_schedules

            sig do
              params(
                route_id: String,
                stop_route_direction_schedules: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule]
              ).void
            end
            def initialize(route_id:, stop_route_direction_schedules:)
            end

            sig do
              override.returns(
                {
                  route_id: String,
                  stop_route_direction_schedules: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule]
                }
              )
            end
            def to_hash
            end

            class StopRouteDirectionSchedule < OnebusawaySDK::BaseModel
              sig do
                returns(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime])
              end
              attr_accessor :schedule_stop_times

              sig { returns(String) }
              attr_accessor :trip_headsign

              sig do
                returns(T.nilable(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency]))
              end
              attr_reader :schedule_frequencies

              sig do
                params(
                  schedule_frequencies: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency]
                ).void
              end
              attr_writer :schedule_frequencies

              sig do
                params(
                  schedule_stop_times: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime],
                  trip_headsign: String,
                  schedule_frequencies: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency]
                ).void
              end
              def initialize(schedule_stop_times:, trip_headsign:, schedule_frequencies: nil)
              end

              sig do
                override.returns(
                  {
                    schedule_stop_times: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime], trip_headsign: String, schedule_frequencies: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency]
                  }
                )
              end
              def to_hash
              end

              class ScheduleStopTime < OnebusawaySDK::BaseModel
                sig { returns(T::Boolean) }
                attr_accessor :arrival_enabled

                sig { returns(Integer) }
                attr_accessor :arrival_time

                sig { returns(T::Boolean) }
                attr_accessor :departure_enabled

                sig { returns(Integer) }
                attr_accessor :departure_time

                sig { returns(String) }
                attr_accessor :service_id

                sig { returns(String) }
                attr_accessor :trip_id

                sig { returns(T.nilable(String)) }
                attr_reader :stop_headsign

                sig { params(stop_headsign: String).void }
                attr_writer :stop_headsign

                sig do
                  params(
                    arrival_enabled: T::Boolean,
                    arrival_time: Integer,
                    departure_enabled: T::Boolean,
                    departure_time: Integer,
                    service_id: String,
                    trip_id: String,
                    stop_headsign: String
                  ).void
                end
                def initialize(
                  arrival_enabled:,
                  arrival_time:,
                  departure_enabled:,
                  departure_time:,
                  service_id:,
                  trip_id:,
                  stop_headsign: nil
                )
                end

                sig do
                  override.returns(
                    {
                      arrival_enabled: T::Boolean,
                      arrival_time: Integer,
                      departure_enabled: T::Boolean,
                      departure_time: Integer,
                      service_id: String,
                      trip_id: String,
                      stop_headsign: String
                    }
                  )
                end
                def to_hash
                end
              end

              class ScheduleFrequency < OnebusawaySDK::BaseModel
                sig { returns(Integer) }
                attr_accessor :end_time

                sig { returns(Integer) }
                attr_accessor :headway

                sig { returns(Integer) }
                attr_accessor :service_date

                sig { returns(String) }
                attr_accessor :service_id

                sig { returns(Integer) }
                attr_accessor :start_time

                sig { returns(String) }
                attr_accessor :trip_id

                sig do
                  params(
                    end_time: Integer,
                    headway: Integer,
                    service_date: Integer,
                    service_id: String,
                    start_time: Integer,
                    trip_id: String
                  ).void
                end
                def initialize(end_time:, headway:, service_date:, service_id:, start_time:, trip_id:)
                end

                sig do
                  override.returns(
                    {
                      end_time: Integer,
                      headway: Integer,
                      service_date: Integer,
                      service_id: String,
                      start_time: Integer,
                      trip_id: String
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
    end
  end
end
