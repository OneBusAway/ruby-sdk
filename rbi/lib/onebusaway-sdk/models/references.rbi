# typed: strong

module OnebusawaySDK
  module Models
    class References < OnebusawaySDK::BaseModel
      sig { returns(T::Array[OnebusawaySDK::Models::References::Agency]) }
      def agencies
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::Agency])
          .returns(T::Array[OnebusawaySDK::Models::References::Agency])
      end
      def agencies=(_)
      end

      sig { returns(T::Array[OnebusawaySDK::Models::References::Route]) }
      def routes
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::Route])
          .returns(T::Array[OnebusawaySDK::Models::References::Route])
      end
      def routes=(_)
      end

      sig { returns(T::Array[OnebusawaySDK::Models::References::Situation]) }
      def situations
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::Situation])
          .returns(T::Array[OnebusawaySDK::Models::References::Situation])
      end
      def situations=(_)
      end

      sig { returns(T::Array[OnebusawaySDK::Models::References::Stop]) }
      def stops
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::Stop])
          .returns(T::Array[OnebusawaySDK::Models::References::Stop])
      end
      def stops=(_)
      end

      sig { returns(T::Array[OnebusawaySDK::Models::References::StopTime]) }
      def stop_times
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::StopTime])
          .returns(T::Array[OnebusawaySDK::Models::References::StopTime])
      end
      def stop_times=(_)
      end

      sig { returns(T::Array[OnebusawaySDK::Models::References::Trip]) }
      def trips
      end

      sig do
        params(_: T::Array[OnebusawaySDK::Models::References::Trip])
          .returns(T::Array[OnebusawaySDK::Models::References::Trip])
      end
      def trips=(_)
      end

      sig do
        params(
          agencies: T::Array[OnebusawaySDK::Models::References::Agency],
          routes: T::Array[OnebusawaySDK::Models::References::Route],
          situations: T::Array[OnebusawaySDK::Models::References::Situation],
          stops: T::Array[OnebusawaySDK::Models::References::Stop],
          stop_times: T::Array[OnebusawaySDK::Models::References::StopTime],
          trips: T::Array[OnebusawaySDK::Models::References::Trip]
        )
          .returns(T.attached_class)
      end
      def self.new(agencies:, routes:, situations:, stops:, stop_times:, trips:)
      end

      sig do
        override
          .returns(
            {
              agencies: T::Array[OnebusawaySDK::Models::References::Agency],
              routes: T::Array[OnebusawaySDK::Models::References::Route],
              situations: T::Array[OnebusawaySDK::Models::References::Situation],
              stops: T::Array[OnebusawaySDK::Models::References::Stop],
              stop_times: T::Array[OnebusawaySDK::Models::References::StopTime],
              trips: T::Array[OnebusawaySDK::Models::References::Trip]
            }
          )
      end
      def to_hash
      end

      class Agency < OnebusawaySDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(String) }
        def timezone
        end

        sig { params(_: String).returns(String) }
        def timezone=(_)
        end

        sig { returns(String) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        sig { returns(T.nilable(String)) }
        def disclaimer
        end

        sig { params(_: String).returns(String) }
        def disclaimer=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        sig { returns(T.nilable(String)) }
        def fare_url
        end

        sig { params(_: String).returns(String) }
        def fare_url=(_)
        end

        sig { returns(T.nilable(String)) }
        def lang
        end

        sig { params(_: String).returns(String) }
        def lang=(_)
        end

        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: String).returns(String) }
        def phone=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def private_service
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def private_service=(_)
        end

        sig do
          params(
            id: String,
            name: String,
            timezone: String,
            url: String,
            disclaimer: String,
            email: String,
            fare_url: String,
            lang: String,
            phone: String,
            private_service: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          name:,
          timezone:,
          url:,
          disclaimer: nil,
          email: nil,
          fare_url: nil,
          lang: nil,
          phone: nil,
          private_service: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                name: String,
                timezone: String,
                url: String,
                disclaimer: String,
                email: String,
                fare_url: String,
                lang: String,
                phone: String,
                private_service: T::Boolean
              }
            )
        end
        def to_hash
        end
      end

      class Route < OnebusawaySDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def agency_id
        end

        sig { params(_: String).returns(String) }
        def agency_id=(_)
        end

        sig { returns(Integer) }
        def type
        end

        sig { params(_: Integer).returns(Integer) }
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def color
        end

        sig { params(_: String).returns(String) }
        def color=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        sig { returns(T.nilable(String)) }
        def long_name
        end

        sig { params(_: String).returns(String) }
        def long_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def null_safe_short_name
        end

        sig { params(_: String).returns(String) }
        def null_safe_short_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def short_name
        end

        sig { params(_: String).returns(String) }
        def short_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def text_color
        end

        sig { params(_: String).returns(String) }
        def text_color=(_)
        end

        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        sig do
          params(
            id: String,
            agency_id: String,
            type: Integer,
            color: String,
            description: String,
            long_name: String,
            null_safe_short_name: String,
            short_name: String,
            text_color: String,
            url: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          agency_id:,
          type:,
          color: nil,
          description: nil,
          long_name: nil,
          null_safe_short_name: nil,
          short_name: nil,
          text_color: nil,
          url: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                agency_id: String,
                type: Integer,
                color: String,
                description: String,
                long_name: String,
                null_safe_short_name: String,
                short_name: String,
                text_color: String,
                url: String
              }
            )
        end
        def to_hash
        end
      end

      class Situation < OnebusawaySDK::BaseModel
        # Unique identifier for the situation.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Unix timestamp of when this situation was created.
        sig { returns(Integer) }
        def creation_time
        end

        sig { params(_: Integer).returns(Integer) }
        def creation_time=(_)
        end

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow])) }
        def active_windows
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow])
            .returns(T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow])
        end
        def active_windows=(_)
        end

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::AllAffect])) }
        def all_affects
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::References::Situation::AllAffect])
            .returns(T::Array[OnebusawaySDK::Models::References::Situation::AllAffect])
        end
        def all_affects=(_)
        end

        # Message regarding the consequence of the situation.
        sig { returns(T.nilable(String)) }
        def consequence_message
        end

        sig { params(_: String).returns(String) }
        def consequence_message=(_)
        end

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::Consequence])) }
        def consequences
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::References::Situation::Consequence])
            .returns(T::Array[OnebusawaySDK::Models::References::Situation::Consequence])
        end
        def consequences=(_)
        end

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Description)) }
        def description
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References::Situation::Description, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References::Situation::Description, OnebusawaySDK::Util::AnyHash))
        end
        def description=(_)
        end

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow])) }
        def publication_windows
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow])
            .returns(T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow])
        end
        def publication_windows=(_)
        end

        # Reason for the service alert, taken from TPEG codes.
        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)) }
        def reason
        end

        sig do
          params(_: OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
            .returns(OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
        end
        def reason=(_)
        end

        # Severity of the situation.
        sig { returns(T.nilable(String)) }
        def severity
        end

        sig { params(_: String).returns(String) }
        def severity=(_)
        end

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Summary)) }
        def summary
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References::Situation::Summary, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References::Situation::Summary, OnebusawaySDK::Util::AnyHash))
        end
        def summary=(_)
        end

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::URL)) }
        def url
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References::Situation::URL, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References::Situation::URL, OnebusawaySDK::Util::AnyHash))
        end
        def url=(_)
        end

        sig do
          params(
            id: String,
            creation_time: Integer,
            active_windows: T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow],
            all_affects: T::Array[OnebusawaySDK::Models::References::Situation::AllAffect],
            consequence_message: String,
            consequences: T::Array[OnebusawaySDK::Models::References::Situation::Consequence],
            description: T.any(OnebusawaySDK::Models::References::Situation::Description, OnebusawaySDK::Util::AnyHash),
            publication_windows: T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow],
            reason: OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol,
            severity: String,
            summary: T.any(OnebusawaySDK::Models::References::Situation::Summary, OnebusawaySDK::Util::AnyHash),
            url: T.any(OnebusawaySDK::Models::References::Situation::URL, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          creation_time:,
          active_windows: nil,
          all_affects: nil,
          consequence_message: nil,
          consequences: nil,
          description: nil,
          publication_windows: nil,
          reason: nil,
          severity: nil,
          summary: nil,
          url: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                creation_time: Integer,
                active_windows: T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow],
                all_affects: T::Array[OnebusawaySDK::Models::References::Situation::AllAffect],
                consequence_message: String,
                consequences: T::Array[OnebusawaySDK::Models::References::Situation::Consequence],
                description: OnebusawaySDK::Models::References::Situation::Description,
                publication_windows: T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow],
                reason: OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol,
                severity: String,
                summary: OnebusawaySDK::Models::References::Situation::Summary,
                url: OnebusawaySDK::Models::References::Situation::URL
              }
            )
        end
        def to_hash
        end

        class ActiveWindow < OnebusawaySDK::BaseModel
          # Start time of the active window as a Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def from
          end

          sig { params(_: Integer).returns(Integer) }
          def from=(_)
          end

          # End time of the active window as a Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          def to
          end

          sig { params(_: Integer).returns(Integer) }
          def to=(_)
          end

          sig { params(from: Integer, to: Integer).returns(T.attached_class) }
          def self.new(from: nil, to: nil)
          end

          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash
          end
        end

        class AllAffect < OnebusawaySDK::BaseModel
          # Identifier for the agency.
          sig { returns(T.nilable(String)) }
          def agency_id
          end

          sig { params(_: String).returns(String) }
          def agency_id=(_)
          end

          # Identifier for the application.
          sig { returns(T.nilable(String)) }
          def application_id
          end

          sig { params(_: String).returns(String) }
          def application_id=(_)
          end

          # Identifier for the direction.
          sig { returns(T.nilable(String)) }
          def direction_id
          end

          sig { params(_: String).returns(String) }
          def direction_id=(_)
          end

          # Identifier for the route.
          sig { returns(T.nilable(String)) }
          def route_id
          end

          sig { params(_: String).returns(String) }
          def route_id=(_)
          end

          # Identifier for the stop.
          sig { returns(T.nilable(String)) }
          def stop_id
          end

          sig { params(_: String).returns(String) }
          def stop_id=(_)
          end

          # Identifier for the trip.
          sig { returns(T.nilable(String)) }
          def trip_id
          end

          sig { params(_: String).returns(String) }
          def trip_id=(_)
          end

          sig do
            params(
              agency_id: String,
              application_id: String,
              direction_id: String,
              route_id: String,
              stop_id: String,
              trip_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(agency_id: nil, application_id: nil, direction_id: nil, route_id: nil, stop_id: nil, trip_id: nil)
          end

          sig do
            override
              .returns(
                {
                  agency_id: String,
                  application_id: String,
                  direction_id: String,
                  route_id: String,
                  stop_id: String,
                  trip_id: String
                }
              )
          end
          def to_hash
          end
        end

        class Consequence < OnebusawaySDK::BaseModel
          # Condition of the consequence.
          sig { returns(T.nilable(String)) }
          def condition
          end

          sig { params(_: String).returns(String) }
          def condition=(_)
          end

          sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails)) }
          def condition_details
          end

          sig do
            params(
              _: T.any(
                OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails,
                OnebusawaySDK::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails,
                  OnebusawaySDK::Util::AnyHash
                )
              )
          end
          def condition_details=(_)
          end

          sig do
            params(
              condition: String,
              condition_details: T.any(
                OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails,
                OnebusawaySDK::Util::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(condition: nil, condition_details: nil)
          end

          sig do
            override
              .returns(
                {
                  condition: String,
                  condition_details: OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails
                }
              )
          end
          def to_hash
          end

          class ConditionDetails < OnebusawaySDK::BaseModel
            sig do
              returns(
                T.nilable(OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath)
              )
            end
            def diversion_path
            end

            sig do
              params(
                _: T.any(
                  OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
            end
            def diversion_path=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def diversion_stop_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def diversion_stop_ids=(_)
            end

            sig do
              params(
                diversion_path: T.any(
                  OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                  OnebusawaySDK::Util::AnyHash
                ),
                diversion_stop_ids: T::Array[String]
              )
                .returns(T.attached_class)
            end
            def self.new(diversion_path: nil, diversion_stop_ids: nil)
            end

            sig do
              override
                .returns(
                  {
                    diversion_path: OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                    diversion_stop_ids: T::Array[String]
                  }
                )
            end
            def to_hash
            end

            class DiversionPath < OnebusawaySDK::BaseModel
              # Length of the diversion path.
              sig { returns(T.nilable(Integer)) }
              def length
              end

              sig { params(_: Integer).returns(Integer) }
              def length=(_)
              end

              # Levels of the diversion path.
              sig { returns(T.nilable(String)) }
              def levels
              end

              sig { params(_: String).returns(String) }
              def levels=(_)
              end

              # Points of the diversion path.
              sig { returns(T.nilable(String)) }
              def points
              end

              sig { params(_: String).returns(String) }
              def points=(_)
              end

              sig { params(length: Integer, levels: String, points: String).returns(T.attached_class) }
              def self.new(length: nil, levels: nil, points: nil)
              end

              sig { override.returns({length: Integer, levels: String, points: String}) }
              def to_hash
              end
            end
          end
        end

        class Description < OnebusawaySDK::BaseModel
          # Language of the description.
          sig { returns(T.nilable(String)) }
          def lang
          end

          sig { params(_: String).returns(String) }
          def lang=(_)
          end

          # Longer description of the situation.
          sig { returns(T.nilable(String)) }
          def value
          end

          sig { params(_: String).returns(String) }
          def value=(_)
          end

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end

        class PublicationWindow < OnebusawaySDK::BaseModel
          # Start time of the time window as a Unix timestamp.
          sig { returns(Integer) }
          def from
          end

          sig { params(_: Integer).returns(Integer) }
          def from=(_)
          end

          # End time of the time window as a Unix timestamp.
          sig { returns(Integer) }
          def to
          end

          sig { params(_: Integer).returns(Integer) }
          def to=(_)
          end

          sig { params(from: Integer, to: Integer).returns(T.attached_class) }
          def self.new(from:, to:)
          end

          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash
          end
        end

        # Reason for the service alert, taken from TPEG codes.
        module Reason
          extend OnebusawaySDK::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, OnebusawaySDK::Models::References::Situation::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol) }

          EQUIPMENT_REASON =
            T.let(:equipmentReason, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
          ENVIRONMENT_REASON =
            T.let(:environmentReason, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
          PERSONNEL_REASON =
            T.let(:personnelReason, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
          MISCELLANEOUS_REASON =
            T.let(:miscellaneousReason, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)
          SECURITY_ALERT =
            T.let(:securityAlert, OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol]) }
            def values
            end
          end
        end

        class Summary < OnebusawaySDK::BaseModel
          # Language of the summary.
          sig { returns(T.nilable(String)) }
          def lang
          end

          sig { params(_: String).returns(String) }
          def lang=(_)
          end

          # Short summary of the situation.
          sig { returns(T.nilable(String)) }
          def value
          end

          sig { params(_: String).returns(String) }
          def value=(_)
          end

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end

        class URL < OnebusawaySDK::BaseModel
          # Language of the URL.
          sig { returns(T.nilable(String)) }
          def lang
          end

          sig { params(_: String).returns(String) }
          def lang=(_)
          end

          # URL for more information about the situation.
          sig { returns(T.nilable(String)) }
          def value
          end

          sig { params(_: String).returns(String) }
          def value=(_)
          end

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end
      end

      class Stop < OnebusawaySDK::BaseModel
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

      class StopTime < OnebusawaySDK::BaseModel
        sig { returns(T.nilable(Integer)) }
        def arrival_time
        end

        sig { params(_: Integer).returns(Integer) }
        def arrival_time=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def departure_time
        end

        sig { params(_: Integer).returns(Integer) }
        def departure_time=(_)
        end

        sig { returns(T.nilable(Float)) }
        def distance_along_trip
        end

        sig { params(_: Float).returns(Float) }
        def distance_along_trip=(_)
        end

        sig { returns(T.nilable(String)) }
        def historical_occupancy
        end

        sig { params(_: String).returns(String) }
        def historical_occupancy=(_)
        end

        sig { returns(T.nilable(String)) }
        def stop_headsign
        end

        sig { params(_: String).returns(String) }
        def stop_headsign=(_)
        end

        sig { returns(T.nilable(String)) }
        def stop_id
        end

        sig { params(_: String).returns(String) }
        def stop_id=(_)
        end

        sig do
          params(
            arrival_time: Integer,
            departure_time: Integer,
            distance_along_trip: Float,
            historical_occupancy: String,
            stop_headsign: String,
            stop_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          arrival_time: nil,
          departure_time: nil,
          distance_along_trip: nil,
          historical_occupancy: nil,
          stop_headsign: nil,
          stop_id: nil
        )
        end

        sig do
          override
            .returns(
              {
                arrival_time: Integer,
                departure_time: Integer,
                distance_along_trip: Float,
                historical_occupancy: String,
                stop_headsign: String,
                stop_id: String
              }
            )
        end
        def to_hash
        end
      end

      class Trip < OnebusawaySDK::BaseModel
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
            .returns(T.attached_class)
        end
        def self.new(
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
