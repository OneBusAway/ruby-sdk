# typed: strong

module OnebusawaySDK
  module Models
    class SearchForStopListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(T.nilable(OnebusawaySDK::Models::SearchForStopListResponse::Data)) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::SearchForStopListResponse::Data)
          .returns(OnebusawaySDK::Models::SearchForStopListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::SearchForStopListResponse::Data).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({data: OnebusawaySDK::Models::SearchForStopListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[OnebusawaySDK::Models::SearchForStopListResponse::Data::List]) }
        def list
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::SearchForStopListResponse::Data::List])
            .returns(T::Array[OnebusawaySDK::Models::SearchForStopListResponse::Data::List])
        end
        def list=(_)
        end

        sig { returns(T::Boolean) }
        def out_of_range
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def out_of_range=(_)
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
            list: T::Array[OnebusawaySDK::Models::SearchForStopListResponse::Data::List],
            out_of_range: T::Boolean,
            references: OnebusawaySDK::Models::References
          )
            .returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, out_of_range:, references:)
        end

        sig do
          override
            .returns(
              {
                limit_exceeded: T::Boolean,
                list: T::Array[OnebusawaySDK::Models::SearchForStopListResponse::Data::List],
                out_of_range: T::Boolean,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class List < OnebusawaySDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Float) }
          def lat
          end

          sig { params(_: Float).returns(Float) }
          def lat=(_)
          end

          sig { returns(Float) }
          def lon
          end

          sig { params(_: Float).returns(Float) }
          def lon=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(String) }
          def parent
          end

          sig { params(_: String).returns(String) }
          def parent=(_)
          end

          sig { returns(T::Array[String]) }
          def route_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def route_ids=(_)
          end

          sig { returns(T::Array[String]) }
          def static_route_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def static_route_ids=(_)
          end

          sig { returns(T.nilable(String)) }
          def code
          end

          sig { params(_: String).returns(String) }
          def code=(_)
          end

          sig { returns(T.nilable(String)) }
          def direction
          end

          sig { params(_: String).returns(String) }
          def direction=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def location_type
          end

          sig { params(_: Integer).returns(Integer) }
          def location_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def wheelchair_boarding
          end

          sig { params(_: String).returns(String) }
          def wheelchair_boarding=(_)
          end

          sig do
            params(
              id: String,
              lat: Float,
              lon: Float,
              name: String,
              parent: String,
              route_ids: T::Array[String],
              static_route_ids: T::Array[String],
              code: String,
              direction: String,
              location_type: Integer,
              wheelchair_boarding: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            lat:,
            lon:,
            name:,
            parent:,
            route_ids:,
            static_route_ids:,
            code: nil,
            direction: nil,
            location_type: nil,
            wheelchair_boarding: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  lat: Float,
                  lon: Float,
                  name: String,
                  parent: String,
                  route_ids: T::Array[String],
                  static_route_ids: T::Array[String],
                  code: String,
                  direction: String,
                  location_type: Integer,
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
