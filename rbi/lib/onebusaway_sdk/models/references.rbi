# typed: strong

module OnebusawaySDK
  module Models
    class References < OnebusawaySDK::Internal::Type::BaseModel
      sig { returns(T::Array[OnebusawaySDK::Models::References::Agency]) }
      attr_accessor :agencies

      sig { returns(T::Array[OnebusawaySDK::Models::References::Route]) }
      attr_accessor :routes

      sig { returns(T::Array[OnebusawaySDK::Models::References::Situation]) }
      attr_accessor :situations

      sig { returns(T::Array[OnebusawaySDK::Models::References::Stop]) }
      attr_accessor :stops

      sig { returns(T::Array[OnebusawaySDK::Models::References::StopTime]) }
      attr_accessor :stop_times

      sig { returns(T::Array[OnebusawaySDK::Models::References::Trip]) }
      attr_accessor :trips

      sig do
        params(
          agencies: T::Array[T.any(OnebusawaySDK::Models::References::Agency, OnebusawaySDK::Internal::AnyHash)],
          routes: T::Array[T.any(OnebusawaySDK::Models::References::Route, OnebusawaySDK::Internal::AnyHash)],
          situations: T::Array[T.any(OnebusawaySDK::Models::References::Situation, OnebusawaySDK::Internal::AnyHash)],
          stops: T::Array[T.any(OnebusawaySDK::Models::References::Stop, OnebusawaySDK::Internal::AnyHash)],
          stop_times: T::Array[T.any(OnebusawaySDK::Models::References::StopTime, OnebusawaySDK::Internal::AnyHash)],
          trips: T::Array[T.any(OnebusawaySDK::Models::References::Trip, OnebusawaySDK::Internal::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(agencies:, routes:, situations:, stops:, stop_times:, trips:); end

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
      def to_hash; end

      class Agency < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :timezone

        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(String)) }
        attr_reader :disclaimer

        sig { params(disclaimer: String).void }
        attr_writer :disclaimer

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :fare_url

        sig { params(fare_url: String).void }
        attr_writer :fare_url

        sig { returns(T.nilable(String)) }
        attr_reader :lang

        sig { params(lang: String).void }
        attr_writer :lang

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :private_service

        sig { params(private_service: T::Boolean).void }
        attr_writer :private_service

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
        ); end
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
        def to_hash; end
      end

      class Route < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :agency_id

        sig { returns(Integer) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :long_name

        sig { params(long_name: String).void }
        attr_writer :long_name

        sig { returns(T.nilable(String)) }
        attr_reader :null_safe_short_name

        sig { params(null_safe_short_name: String).void }
        attr_writer :null_safe_short_name

        sig { returns(T.nilable(String)) }
        attr_reader :short_name

        sig { params(short_name: String).void }
        attr_writer :short_name

        sig { returns(T.nilable(String)) }
        attr_reader :text_color

        sig { params(text_color: String).void }
        attr_writer :text_color

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

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
        ); end
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
        def to_hash; end
      end

      class Situation < OnebusawaySDK::Internal::Type::BaseModel
        # Unique identifier for the situation.
        sig { returns(String) }
        attr_accessor :id

        # Unix timestamp of when this situation was created.
        sig { returns(Integer) }
        attr_accessor :creation_time

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::ActiveWindow])) }
        attr_reader :active_windows

        sig do
          params(
            active_windows: T::Array[T.any(OnebusawaySDK::Models::References::Situation::ActiveWindow, OnebusawaySDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :active_windows

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::AllAffect])) }
        attr_reader :all_affects

        sig do
          params(
            all_affects: T::Array[T.any(OnebusawaySDK::Models::References::Situation::AllAffect, OnebusawaySDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :all_affects

        # Message regarding the consequence of the situation.
        sig { returns(T.nilable(String)) }
        attr_reader :consequence_message

        sig { params(consequence_message: String).void }
        attr_writer :consequence_message

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::Consequence])) }
        attr_reader :consequences

        sig do
          params(
            consequences: T::Array[T.any(OnebusawaySDK::Models::References::Situation::Consequence, OnebusawaySDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :consequences

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Description)) }
        attr_reader :description

        sig do
          params(
            description: T.any(OnebusawaySDK::Models::References::Situation::Description, OnebusawaySDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :description

        sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::References::Situation::PublicationWindow])) }
        attr_reader :publication_windows

        sig do
          params(
            publication_windows: T::Array[T.any(OnebusawaySDK::Models::References::Situation::PublicationWindow, OnebusawaySDK::Internal::AnyHash)]
          )
            .void
        end
        attr_writer :publication_windows

        # Reason for the service alert, taken from TPEG codes.
        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol)) }
        attr_reader :reason

        sig { params(reason: OnebusawaySDK::Models::References::Situation::Reason::OrSymbol).void }
        attr_writer :reason

        # Severity of the situation.
        sig { returns(T.nilable(String)) }
        attr_reader :severity

        sig { params(severity: String).void }
        attr_writer :severity

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Summary)) }
        attr_reader :summary

        sig do
          params(
            summary: T.any(OnebusawaySDK::Models::References::Situation::Summary, OnebusawaySDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :summary

        sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::URL)) }
        attr_reader :url

        sig do
          params(url: T.any(OnebusawaySDK::Models::References::Situation::URL, OnebusawaySDK::Internal::AnyHash))
            .void
        end
        attr_writer :url

        sig do
          params(
            id: String,
            creation_time: Integer,
            active_windows: T::Array[T.any(OnebusawaySDK::Models::References::Situation::ActiveWindow, OnebusawaySDK::Internal::AnyHash)],
            all_affects: T::Array[T.any(OnebusawaySDK::Models::References::Situation::AllAffect, OnebusawaySDK::Internal::AnyHash)],
            consequence_message: String,
            consequences: T::Array[T.any(OnebusawaySDK::Models::References::Situation::Consequence, OnebusawaySDK::Internal::AnyHash)],
            description: T.any(OnebusawaySDK::Models::References::Situation::Description, OnebusawaySDK::Internal::AnyHash),
            publication_windows: T::Array[T.any(OnebusawaySDK::Models::References::Situation::PublicationWindow, OnebusawaySDK::Internal::AnyHash)],
            reason: OnebusawaySDK::Models::References::Situation::Reason::OrSymbol,
            severity: String,
            summary: T.any(OnebusawaySDK::Models::References::Situation::Summary, OnebusawaySDK::Internal::AnyHash),
            url: T.any(OnebusawaySDK::Models::References::Situation::URL, OnebusawaySDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the situation.
          id:,
          # Unix timestamp of when this situation was created.
          creation_time:,
          active_windows: nil,
          all_affects: nil,
          # Message regarding the consequence of the situation.
          consequence_message: nil,
          consequences: nil,
          description: nil,
          publication_windows: nil,
          # Reason for the service alert, taken from TPEG codes.
          reason: nil,
          # Severity of the situation.
          severity: nil,
          summary: nil,
          url: nil
        ); end
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
        def to_hash; end

        class ActiveWindow < OnebusawaySDK::Internal::Type::BaseModel
          # Start time of the active window as a Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :from

          sig { params(from: Integer).void }
          attr_writer :from

          # End time of the active window as a Unix timestamp.
          sig { returns(T.nilable(Integer)) }
          attr_reader :to

          sig { params(to: Integer).void }
          attr_writer :to

          sig { params(from: Integer, to: Integer).returns(T.attached_class) }
          def self.new(
            # Start time of the active window as a Unix timestamp.
            from: nil,
            # End time of the active window as a Unix timestamp.
            to: nil
          ); end
          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash; end
        end

        class AllAffect < OnebusawaySDK::Internal::Type::BaseModel
          # Identifier for the agency.
          sig { returns(T.nilable(String)) }
          attr_reader :agency_id

          sig { params(agency_id: String).void }
          attr_writer :agency_id

          # Identifier for the application.
          sig { returns(T.nilable(String)) }
          attr_reader :application_id

          sig { params(application_id: String).void }
          attr_writer :application_id

          # Identifier for the direction.
          sig { returns(T.nilable(String)) }
          attr_reader :direction_id

          sig { params(direction_id: String).void }
          attr_writer :direction_id

          # Identifier for the route.
          sig { returns(T.nilable(String)) }
          attr_reader :route_id

          sig { params(route_id: String).void }
          attr_writer :route_id

          # Identifier for the stop.
          sig { returns(T.nilable(String)) }
          attr_reader :stop_id

          sig { params(stop_id: String).void }
          attr_writer :stop_id

          # Identifier for the trip.
          sig { returns(T.nilable(String)) }
          attr_reader :trip_id

          sig { params(trip_id: String).void }
          attr_writer :trip_id

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
          def self.new(
            # Identifier for the agency.
            agency_id: nil,
            # Identifier for the application.
            application_id: nil,
            # Identifier for the direction.
            direction_id: nil,
            # Identifier for the route.
            route_id: nil,
            # Identifier for the stop.
            stop_id: nil,
            # Identifier for the trip.
            trip_id: nil
          ); end
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
          def to_hash; end
        end

        class Consequence < OnebusawaySDK::Internal::Type::BaseModel
          # Condition of the consequence.
          sig { returns(T.nilable(String)) }
          attr_reader :condition

          sig { params(condition: String).void }
          attr_writer :condition

          sig { returns(T.nilable(OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails)) }
          attr_reader :condition_details

          sig do
            params(
              condition_details: T.any(
                OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails,
                OnebusawaySDK::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :condition_details

          sig do
            params(
              condition: String,
              condition_details: T.any(
                OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails,
                OnebusawaySDK::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Condition of the consequence.
            condition: nil,
            condition_details: nil
          ); end
          sig do
            override
              .returns(
                {
                  condition: String,
                  condition_details: OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails
                }
              )
          end
          def to_hash; end

          class ConditionDetails < OnebusawaySDK::Internal::Type::BaseModel
            sig do
              returns(
                T.nilable(OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath)
              )
            end
            attr_reader :diversion_path

            sig do
              params(
                diversion_path: T.any(
                  OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                  OnebusawaySDK::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :diversion_path

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :diversion_stop_ids

            sig { params(diversion_stop_ids: T::Array[String]).void }
            attr_writer :diversion_stop_ids

            sig do
              params(
                diversion_path: T.any(
                  OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                  OnebusawaySDK::Internal::AnyHash
                ),
                diversion_stop_ids: T::Array[String]
              )
                .returns(T.attached_class)
            end
            def self.new(diversion_path: nil, diversion_stop_ids: nil); end

            sig do
              override
                .returns(
                  {
                    diversion_path: OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                    diversion_stop_ids: T::Array[String]
                  }
                )
            end
            def to_hash; end

            class DiversionPath < OnebusawaySDK::Internal::Type::BaseModel
              # Length of the diversion path.
              sig { returns(T.nilable(Integer)) }
              attr_reader :length

              sig { params(length: Integer).void }
              attr_writer :length

              # Levels of the diversion path.
              sig { returns(T.nilable(String)) }
              attr_reader :levels

              sig { params(levels: String).void }
              attr_writer :levels

              # Points of the diversion path.
              sig { returns(T.nilable(String)) }
              attr_reader :points

              sig { params(points: String).void }
              attr_writer :points

              sig { params(length: Integer, levels: String, points: String).returns(T.attached_class) }
              def self.new(
                # Length of the diversion path.
                length: nil,
                # Levels of the diversion path.
                levels: nil,
                # Points of the diversion path.
                points: nil
              ); end
              sig { override.returns({length: Integer, levels: String, points: String}) }
              def to_hash; end
            end
          end
        end

        class Description < OnebusawaySDK::Internal::Type::BaseModel
          # Language of the description.
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          # Longer description of the situation.
          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(
            # Language of the description.
            lang: nil,
            # Longer description of the situation.
            value: nil
          ); end
          sig { override.returns({lang: String, value: String}) }
          def to_hash; end
        end

        class PublicationWindow < OnebusawaySDK::Internal::Type::BaseModel
          # Start time of the time window as a Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :from

          # End time of the time window as a Unix timestamp.
          sig { returns(Integer) }
          attr_accessor :to

          sig { params(from: Integer, to: Integer).returns(T.attached_class) }
          def self.new(
            # Start time of the time window as a Unix timestamp.
            from:,
            # End time of the time window as a Unix timestamp.
            to:
          ); end
          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash; end
        end

        # Reason for the service alert, taken from TPEG codes.
        module Reason
          extend OnebusawaySDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, OnebusawaySDK::Models::References::Situation::Reason) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

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

          sig { override.returns(T::Array[OnebusawaySDK::Models::References::Situation::Reason::TaggedSymbol]) }
          def self.values; end
        end

        class Summary < OnebusawaySDK::Internal::Type::BaseModel
          # Language of the summary.
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          # Short summary of the situation.
          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(
            # Language of the summary.
            lang: nil,
            # Short summary of the situation.
            value: nil
          ); end
          sig { override.returns({lang: String, value: String}) }
          def to_hash; end
        end

        class URL < OnebusawaySDK::Internal::Type::BaseModel
          # Language of the URL.
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          # URL for more information about the situation.
          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).returns(T.attached_class) }
          def self.new(
            # Language of the URL.
            lang: nil,
            # URL for more information about the situation.
            value: nil
          ); end
          sig { override.returns({lang: String, value: String}) }
          def to_hash; end
        end
      end

      class Stop < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :lat

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :location_type

        sig { params(location_type: Integer).void }
        attr_writer :location_type

        sig { returns(T.nilable(String)) }
        attr_reader :wheelchair_boarding

        sig { params(wheelchair_boarding: String).void }
        attr_writer :wheelchair_boarding

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
        ); end
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
        def to_hash; end
      end

      class StopTime < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_reader :arrival_time

        sig { params(arrival_time: Integer).void }
        attr_writer :arrival_time

        sig { returns(T.nilable(Integer)) }
        attr_reader :departure_time

        sig { params(departure_time: Integer).void }
        attr_writer :departure_time

        sig { returns(T.nilable(Float)) }
        attr_reader :distance_along_trip

        sig { params(distance_along_trip: Float).void }
        attr_writer :distance_along_trip

        sig { returns(T.nilable(String)) }
        attr_reader :historical_occupancy

        sig { params(historical_occupancy: String).void }
        attr_writer :historical_occupancy

        sig { returns(T.nilable(String)) }
        attr_reader :stop_headsign

        sig { params(stop_headsign: String).void }
        attr_writer :stop_headsign

        sig { returns(T.nilable(String)) }
        attr_reader :stop_id

        sig { params(stop_id: String).void }
        attr_writer :stop_id

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
        ); end
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
        def to_hash; end
      end

      class Trip < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :route_id

        sig { returns(String) }
        attr_accessor :service_id

        sig { returns(T.nilable(String)) }
        attr_reader :block_id

        sig { params(block_id: String).void }
        attr_writer :block_id

        sig { returns(T.nilable(String)) }
        attr_reader :direction_id

        sig { params(direction_id: String).void }
        attr_writer :direction_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :peak_offpeak

        sig { params(peak_offpeak: Integer).void }
        attr_writer :peak_offpeak

        sig { returns(T.nilable(String)) }
        attr_reader :route_short_name

        sig { params(route_short_name: String).void }
        attr_writer :route_short_name

        sig { returns(T.nilable(String)) }
        attr_reader :shape_id

        sig { params(shape_id: String).void }
        attr_writer :shape_id

        sig { returns(T.nilable(String)) }
        attr_reader :time_zone

        sig { params(time_zone: String).void }
        attr_writer :time_zone

        sig { returns(T.nilable(String)) }
        attr_reader :trip_headsign

        sig { params(trip_headsign: String).void }
        attr_writer :trip_headsign

        sig { returns(T.nilable(String)) }
        attr_reader :trip_short_name

        sig { params(trip_short_name: String).void }
        attr_writer :trip_short_name

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
        ); end
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
        def to_hash; end
      end
    end
  end
end
