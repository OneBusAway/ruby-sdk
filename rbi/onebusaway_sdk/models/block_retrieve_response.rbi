# typed: strong

module OnebusawaySDK
  module Models
    class BlockRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::BlockRetrieveResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(OnebusawaySDK::Models::BlockRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OnebusawaySDK::Models::BlockRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OnebusawaySDK::Models::BlockRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::BlockRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::BlockRetrieveResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig do
          returns(OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry)
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::OrHash
          ).void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            entry:
              OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::OrHash,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry,
                OnebusawaySDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T::Array[
                OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration
              ]
            )
          end
          attr_accessor :configurations

          sig do
            params(
              id: String,
              configurations:
                T::Array[
                  OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(id:, configurations:)
          end

          sig do
            override.returns(
              {
                id: String,
                configurations:
                  T::Array[
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration
                  ]
              }
            )
          end
          def to_hash
          end

          class Configuration < OnebusawaySDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration,
                  OnebusawaySDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :active_service_ids

            sig do
              returns(
                T::Array[
                  OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip
                ]
              )
            end
            attr_accessor :trips

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :inactive_service_ids

            sig { params(inactive_service_ids: T::Array[String]).void }
            attr_writer :inactive_service_ids

            sig do
              params(
                active_service_ids: T::Array[String],
                trips:
                  T::Array[
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::OrHash
                  ],
                inactive_service_ids: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(active_service_ids:, trips:, inactive_service_ids: nil)
            end

            sig do
              override.returns(
                {
                  active_service_ids: T::Array[String],
                  trips:
                    T::Array[
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip
                    ],
                  inactive_service_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class Trip < OnebusawaySDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip,
                    OnebusawaySDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :accumulated_slack_time

              sig do
                returns(
                  T::Array[
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime
                  ]
                )
              end
              attr_accessor :block_stop_times

              sig { returns(Float) }
              attr_accessor :distance_along_block

              sig { returns(String) }
              attr_accessor :trip_id

              sig do
                params(
                  accumulated_slack_time: Float,
                  block_stop_times:
                    T::Array[
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::OrHash
                    ],
                  distance_along_block: Float,
                  trip_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                accumulated_slack_time:,
                block_stop_times:,
                distance_along_block:,
                trip_id:
              )
              end

              sig do
                override.returns(
                  {
                    accumulated_slack_time: Float,
                    block_stop_times:
                      T::Array[
                        OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime
                      ],
                    distance_along_block: Float,
                    trip_id: String
                  }
                )
              end
              def to_hash
              end

              class BlockStopTime < OnebusawaySDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime,
                      OnebusawaySDK::Internal::AnyHash
                    )
                  end

                sig { returns(Float) }
                attr_accessor :accumulated_slack_time

                sig { returns(Integer) }
                attr_accessor :block_sequence

                sig { returns(Float) }
                attr_accessor :distance_along_block

                sig do
                  returns(
                    OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                  )
                end
                attr_reader :stop_time

                sig do
                  params(
                    stop_time:
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime::OrHash
                  ).void
                end
                attr_writer :stop_time

                sig do
                  params(
                    accumulated_slack_time: Float,
                    block_sequence: Integer,
                    distance_along_block: Float,
                    stop_time:
                      OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  accumulated_slack_time:,
                  block_sequence:,
                  distance_along_block:,
                  stop_time:
                )
                end

                sig do
                  override.returns(
                    {
                      accumulated_slack_time: Float,
                      block_sequence: Integer,
                      distance_along_block: Float,
                      stop_time:
                        OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                    }
                  )
                end
                def to_hash
                end

                class StopTime < OnebusawaySDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime,
                        OnebusawaySDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Integer) }
                  attr_accessor :arrival_time

                  sig { returns(Integer) }
                  attr_accessor :departure_time

                  sig { returns(String) }
                  attr_accessor :stop_id

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :drop_off_type

                  sig { params(drop_off_type: Integer).void }
                  attr_writer :drop_off_type

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :pickup_type

                  sig { params(pickup_type: Integer).void }
                  attr_writer :pickup_type

                  sig do
                    params(
                      arrival_time: Integer,
                      departure_time: Integer,
                      stop_id: String,
                      drop_off_type: Integer,
                      pickup_type: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    arrival_time:,
                    departure_time:,
                    stop_id:,
                    drop_off_type: nil,
                    pickup_type: nil
                  )
                  end

                  sig do
                    override.returns(
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
