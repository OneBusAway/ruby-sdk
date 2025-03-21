# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForStopRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data) }
      def data
      end

      sig do
        params(
          _: T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(
            _: T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(
              T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
            )
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
        end
        def references=(_)
        end

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash),
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override
            .returns(
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
          def date
          end

          sig { params(_: Integer).returns(Integer) }
          def date=(_)
          end

          sig { returns(String) }
          def stop_id
          end

          sig { params(_: String).returns(String) }
          def stop_id=(_)
          end

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]) }
          def stop_route_schedules
          end

          sig do
            params(
              _: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]
            )
              .returns(T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule])
          end
          def stop_route_schedules=(_)
          end

          sig do
            params(
              date: Integer,
              stop_id: String,
              stop_route_schedules: T::Array[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]
            )
              .returns(T.attached_class)
          end
          def self.new(date:, stop_id:, stop_route_schedules:)
          end

          sig do
            override
              .returns(
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
            def route_id
            end

            sig { params(_: String).returns(String) }
            def route_id=(_)
            end

            sig do
              returns(
                T::Array[
                OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                ]
              )
            end
            def stop_route_direction_schedules
            end

            sig do
              params(
                _: T::Array[
                OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                ]
              )
                .returns(
                  T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                  ]
                )
            end
            def stop_route_direction_schedules=(_)
            end

            sig do
              params(
                route_id: String,
                stop_route_direction_schedules: T::Array[
                OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                ]
              )
                .returns(T.attached_class)
            end
            def self.new(route_id:, stop_route_direction_schedules:)
            end

            sig do
              override
                .returns(
                  {
                    route_id: String,
                    stop_route_direction_schedules: T::Array[
                    OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                    ]
                  }
                )
            end
            def to_hash
            end

            class StopRouteDirectionSchedule < OnebusawaySDK::BaseModel
              sig do
                returns(
                  T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                  ]
                )
              end
              def schedule_stop_times
              end

              sig do
                params(
                  _: T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                  ]
                )
                  .returns(
                    T::Array[
                    OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                    ]
                  )
              end
              def schedule_stop_times=(_)
              end

              sig { returns(String) }
              def trip_headsign
              end

              sig { params(_: String).returns(String) }
              def trip_headsign=(_)
              end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                    OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                    ]
                  )
                )
              end
              def schedule_frequencies
              end

              sig do
                params(
                  _: T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                  ]
                )
                  .returns(
                    T::Array[
                    OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                    ]
                  )
              end
              def schedule_frequencies=(_)
              end

              sig do
                params(
                  schedule_stop_times: T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                  ],
                  trip_headsign: String,
                  schedule_frequencies: T::Array[
                  OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                  ]
                )
                  .returns(T.attached_class)
              end
              def self.new(schedule_stop_times:, trip_headsign:, schedule_frequencies: nil)
              end

              sig do
                override
                  .returns(
                    {
                      schedule_stop_times: T::Array[
                      OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                      ],
                      trip_headsign: String,
                      schedule_frequencies: T::Array[
                      OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                      ]
                    }
                  )
              end
              def to_hash
              end

              class ScheduleStopTime < OnebusawaySDK::BaseModel
                sig { returns(T::Boolean) }
                def arrival_enabled
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def arrival_enabled=(_)
                end

                sig { returns(Integer) }
                def arrival_time
                end

                sig { params(_: Integer).returns(Integer) }
                def arrival_time=(_)
                end

                sig { returns(T::Boolean) }
                def departure_enabled
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def departure_enabled=(_)
                end

                sig { returns(Integer) }
                def departure_time
                end

                sig { params(_: Integer).returns(Integer) }
                def departure_time=(_)
                end

                sig { returns(String) }
                def service_id
                end

                sig { params(_: String).returns(String) }
                def service_id=(_)
                end

                sig { returns(String) }
                def trip_id
                end

                sig { params(_: String).returns(String) }
                def trip_id=(_)
                end

                sig { returns(T.nilable(String)) }
                def stop_headsign
                end

                sig { params(_: String).returns(String) }
                def stop_headsign=(_)
                end

                sig do
                  params(
                    arrival_enabled: T::Boolean,
                    arrival_time: Integer,
                    departure_enabled: T::Boolean,
                    departure_time: Integer,
                    service_id: String,
                    trip_id: String,
                    stop_headsign: String
                  )
                    .returns(T.attached_class)
                end
                def self.new(
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
                  override
                    .returns(
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
                def end_time
                end

                sig { params(_: Integer).returns(Integer) }
                def end_time=(_)
                end

                sig { returns(Integer) }
                def headway
                end

                sig { params(_: Integer).returns(Integer) }
                def headway=(_)
                end

                sig { returns(Integer) }
                def service_date
                end

                sig { params(_: Integer).returns(Integer) }
                def service_date=(_)
                end

                sig { returns(String) }
                def service_id
                end

                sig { params(_: String).returns(String) }
                def service_id=(_)
                end

                sig { returns(Integer) }
                def start_time
                end

                sig { params(_: Integer).returns(Integer) }
                def start_time=(_)
                end

                sig { returns(String) }
                def trip_id
                end

                sig { params(_: String).returns(String) }
                def trip_id=(_)
                end

                sig do
                  params(
                    end_time: Integer,
                    headway: Integer,
                    service_date: Integer,
                    service_id: String,
                    start_time: Integer,
                    trip_id: String
                  )
                    .returns(T.attached_class)
                end
                def self.new(end_time:, headway:, service_date:, service_id:, start_time:, trip_id:)
                end

                sig do
                  override
                    .returns(
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
