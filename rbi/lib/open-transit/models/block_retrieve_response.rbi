# typed: strong

module OpenTransit
  module Models
    class BlockRetrieveResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::BlockRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::BlockRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::BlockRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::BlockRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::BlockRetrieveResponse::Data::Entry,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::BlockRetrieveResponse::Data::Entry,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration]) }
          attr_accessor :configurations

          sig do
            params(
              id: String,
              configurations: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration]
            ).void
          end
          def initialize(id:, configurations:)
          end

          sig do
            override.returns(
              {
                id: String,
                configurations: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration]
              }
            )
          end
          def to_hash
          end

          class Configuration < OpenTransit::BaseModel
            sig { returns(T::Array[String]) }
            attr_accessor :active_service_ids

            sig do
              returns(T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip])
            end
            attr_accessor :trips

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :inactive_service_ids

            sig { params(inactive_service_ids: T::Array[String]).void }
            attr_writer :inactive_service_ids

            sig do
              params(
                active_service_ids: T::Array[String],
                trips: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip],
                inactive_service_ids: T::Array[String]
              ).void
            end
            def initialize(active_service_ids:, trips:, inactive_service_ids: nil)
            end

            sig do
              override.returns(
                {
                  active_service_ids: T::Array[String],
                  trips: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip],
                  inactive_service_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class Trip < OpenTransit::BaseModel
              sig { returns(Float) }
              attr_accessor :accumulated_slack_time

              sig do
                returns(T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime])
              end
              attr_accessor :block_stop_times

              sig { returns(Float) }
              attr_accessor :distance_along_block

              sig { returns(String) }
              attr_accessor :trip_id

              sig do
                params(
                  accumulated_slack_time: Float,
                  block_stop_times: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime],
                  distance_along_block: Float,
                  trip_id: String
                ).void
              end
              def initialize(accumulated_slack_time:, block_stop_times:, distance_along_block:, trip_id:)
              end

              sig do
                override.returns(
                  {
                    accumulated_slack_time: Float,
                    block_stop_times: T::Array[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime],
                    distance_along_block: Float,
                    trip_id: String
                  }
                )
              end
              def to_hash
              end

              class BlockStopTime < OpenTransit::BaseModel
                sig { returns(Float) }
                attr_accessor :accumulated_slack_time

                sig { returns(Integer) }
                attr_accessor :block_sequence

                sig { returns(Float) }
                attr_accessor :distance_along_block

                sig do
                  returns(OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime)
                end
                attr_accessor :stop_time

                sig do
                  params(
                    accumulated_slack_time: Float,
                    block_sequence: Integer,
                    distance_along_block: Float,
                    stop_time: OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                  ).void
                end
                def initialize(accumulated_slack_time:, block_sequence:, distance_along_block:, stop_time:)
                end

                sig do
                  override.returns(
                    {
                      accumulated_slack_time: Float,
                      block_sequence: Integer,
                      distance_along_block: Float,
                      stop_time: OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                    }
                  )
                end
                def to_hash
                end

                class StopTime < OpenTransit::BaseModel
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
                    ).void
                  end
                  def initialize(
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
