# typed: strong

module OpenTransit
  module Models
    class StopsForLocationListResponse < OpenTransit::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::Models::StopsForLocationListResponse,
            OpenTransit::Internal::AnyHash
          )
        end

      sig { returns(OpenTransit::Models::StopsForLocationListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OpenTransit::Models::StopsForLocationListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OpenTransit::Models::StopsForLocationListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OpenTransit::Models::StopsForLocationListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OpenTransit::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OpenTransit::Models::StopsForLocationListResponse::Data,
              OpenTransit::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig do
          returns(
            T::Array[
              OpenTransit::Models::StopsForLocationListResponse::Data::List
            ]
          )
        end
        attr_accessor :list

        sig { returns(OpenTransit::References) }
        attr_reader :references

        sig { params(references: OpenTransit::References::OrHash).void }
        attr_writer :references

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :out_of_range

        sig { params(out_of_range: T::Boolean).void }
        attr_writer :out_of_range

        sig do
          params(
            limit_exceeded: T::Boolean,
            list:
              T::Array[
                OpenTransit::Models::StopsForLocationListResponse::Data::List::OrHash
              ],
            references: OpenTransit::References::OrHash,
            out_of_range: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:, out_of_range: nil)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list:
                T::Array[
                  OpenTransit::Models::StopsForLocationListResponse::Data::List
                ],
              references: OpenTransit::References,
              out_of_range: T::Boolean
            }
          )
        end
        def to_hash
        end

        class List < OpenTransit::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OpenTransit::Models::StopsForLocationListResponse::Data::List,
                OpenTransit::Internal::AnyHash
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
