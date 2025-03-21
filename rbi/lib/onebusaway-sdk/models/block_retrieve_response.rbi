# typed: strong

module OnebusawaySDK
  module Models
    class BlockRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::BlockRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::BlockRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::BlockRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::BlockRetrieveResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::BlockRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash))
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
            entry: OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry,
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

          sig { returns(T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration]) }
          def configurations
          end

          sig do
            params(_: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration])
              .returns(T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration])
          end
          def configurations=(_)
          end

          sig do
            params(
              id: String,
              configurations: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration]
            )
              .returns(T.attached_class)
          end
          def self.new(id:, configurations:)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  configurations: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration]
                }
              )
          end
          def to_hash
          end

          class Configuration < OnebusawaySDK::BaseModel
            sig { returns(T::Array[String]) }
            def active_service_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def active_service_ids=(_)
            end

            sig { returns(T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip]) }
            def trips
            end

            sig do
              params(_: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip])
                .returns(T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip])
            end
            def trips=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def inactive_service_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def inactive_service_ids=(_)
            end

            sig do
              params(
                active_service_ids: T::Array[String],
                trips: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip],
                inactive_service_ids: T::Array[String]
              )
                .returns(T.attached_class)
            end
            def self.new(active_service_ids:, trips:, inactive_service_ids: nil)
            end

            sig do
              override
                .returns(
                  {
                    active_service_ids: T::Array[String],
                    trips: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip],
                    inactive_service_ids: T::Array[String]
                  }
                )
            end
            def to_hash
            end

            class Trip < OnebusawaySDK::BaseModel
              sig { returns(Float) }
              def accumulated_slack_time
              end

              sig { params(_: Float).returns(Float) }
              def accumulated_slack_time=(_)
              end

              sig do
                returns(
                  T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime]
                )
              end
              def block_stop_times
              end

              sig do
                params(
                  _: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime]
                )
                  .returns(
                    T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime]
                  )
              end
              def block_stop_times=(_)
              end

              sig { returns(Float) }
              def distance_along_block
              end

              sig { params(_: Float).returns(Float) }
              def distance_along_block=(_)
              end

              sig { returns(String) }
              def trip_id
              end

              sig { params(_: String).returns(String) }
              def trip_id=(_)
              end

              sig do
                params(
                  accumulated_slack_time: Float,
                  block_stop_times: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime],
                  distance_along_block: Float,
                  trip_id: String
                )
                  .returns(T.attached_class)
              end
              def self.new(accumulated_slack_time:, block_stop_times:, distance_along_block:, trip_id:)
              end

              sig do
                override
                  .returns(
                    {
                      accumulated_slack_time: Float,
                      block_stop_times: T::Array[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime],
                      distance_along_block: Float,
                      trip_id: String
                    }
                  )
              end
              def to_hash
              end

              class BlockStopTime < OnebusawaySDK::BaseModel
                sig { returns(Float) }
                def accumulated_slack_time
                end

                sig { params(_: Float).returns(Float) }
                def accumulated_slack_time=(_)
                end

                sig { returns(Integer) }
                def block_sequence
                end

                sig { params(_: Integer).returns(Integer) }
                def block_sequence=(_)
                end

                sig { returns(Float) }
                def distance_along_block
                end

                sig { params(_: Float).returns(Float) }
                def distance_along_block=(_)
                end

                sig do
                  returns(
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                  )
                end
                def stop_time
                end

                sig do
                  params(
                    _: T.any(
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime,
                      OnebusawaySDK::Util::AnyHash
                    )
                  )
                    .returns(
                      T.any(
                        OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime,
                        OnebusawaySDK::Util::AnyHash
                      )
                    )
                end
                def stop_time=(_)
                end

                sig do
                  params(
                    accumulated_slack_time: Float,
                    block_sequence: Integer,
                    distance_along_block: Float,
                    stop_time: OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                  )
                    .returns(T.attached_class)
                end
                def self.new(accumulated_slack_time:, block_sequence:, distance_along_block:, stop_time:)
                end

                sig do
                  override
                    .returns(
                      {
                        accumulated_slack_time: Float,
                        block_sequence: Integer,
                        distance_along_block: Float,
                        stop_time: OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                      }
                    )
                end
                def to_hash
                end

                class StopTime < OnebusawaySDK::BaseModel
                  sig { returns(Integer) }
                  def arrival_time
                  end

                  sig { params(_: Integer).returns(Integer) }
                  def arrival_time=(_)
                  end

                  sig { returns(Integer) }
                  def departure_time
                  end

                  sig { params(_: Integer).returns(Integer) }
                  def departure_time=(_)
                  end

                  sig { returns(String) }
                  def stop_id
                  end

                  sig { params(_: String).returns(String) }
                  def stop_id=(_)
                  end

                  sig { returns(T.nilable(Integer)) }
                  def drop_off_type
                  end

                  sig { params(_: Integer).returns(Integer) }
                  def drop_off_type=(_)
                  end

                  sig { returns(T.nilable(Integer)) }
                  def pickup_type
                  end

                  sig { params(_: Integer).returns(Integer) }
                  def pickup_type=(_)
                  end

                  sig do
                    params(
                      arrival_time: Integer,
                      departure_time: Integer,
                      stop_id: String,
                      drop_off_type: Integer,
                      pickup_type: Integer
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(arrival_time:, departure_time:, stop_id:, drop_off_type: nil, pickup_type: nil)
                  end

                  sig do
                    override
                      .returns(
                        {
                          arrival_time: Integer,
                          departure_time: Integer,
                          stop_id: String,
                          drop_off_type: Integer,
                          pickup_type: Integer
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
end
