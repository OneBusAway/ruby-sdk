# typed: strong

module OnebusawaySDK
  module Models
    class SearchForStopListResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::SearchForStopListResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(OnebusawaySDK::Models::SearchForStopListResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: OnebusawaySDK::Models::SearchForStopListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OnebusawaySDK::Models::SearchForStopListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::SearchForStopListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::SearchForStopListResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig do
          returns(
            T::Array[
              OnebusawaySDK::Models::SearchForStopListResponse::Data::List
            ]
          )
        end
        attr_accessor :list

        sig { returns(T::Boolean) }
        attr_accessor :out_of_range

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list:
              T::Array[
                OnebusawaySDK::Models::SearchForStopListResponse::Data::List::OrHash
              ],
            out_of_range: T::Boolean,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, out_of_range:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list:
                T::Array[
                  OnebusawaySDK::Models::SearchForStopListResponse::Data::List
                ],
              out_of_range: T::Boolean,
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end

        class List < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OnebusawaySDK::Models::SearchForStopListResponse::Data::List,
                OnebusawaySDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Float) }
          attr_accessor :lat

          sig { returns(Integer) }
          attr_accessor :location_type

          sig { returns(Float) }
          attr_accessor :lon

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :parent

          sig { returns(T::Array[String]) }
          attr_accessor :route_ids

          sig { returns(T::Array[String]) }
          attr_accessor :static_route_ids

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :direction

          sig { params(direction: String).void }
          attr_writer :direction

          sig { returns(T.nilable(String)) }
          attr_reader :wheelchair_boarding

          sig { params(wheelchair_boarding: String).void }
          attr_writer :wheelchair_boarding

          sig do
            params(
              id: String,
              lat: Float,
              location_type: Integer,
              lon: Float,
              name: String,
              parent: String,
              route_ids: T::Array[String],
              static_route_ids: T::Array[String],
              code: String,
              direction: String,
              wheelchair_boarding: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            lat:,
            location_type:,
            lon:,
            name:,
            parent:,
            route_ids:,
            static_route_ids:,
            code: nil,
            direction: nil,
            wheelchair_boarding: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                lat: Float,
                location_type: Integer,
                lon: Float,
                name: String,
                parent: String,
                route_ids: T::Array[String],
                static_route_ids: T::Array[String],
                code: String,
                direction: String,
                wheelchair_boarding: String
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
