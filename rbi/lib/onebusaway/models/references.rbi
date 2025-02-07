# typed: strong

module Onebusaway
  module Models
    class References < Onebusaway::BaseModel
      sig { returns(T::Array[Onebusaway::Models::References::Agency]) }
      attr_accessor :agencies

      sig { returns(T::Array[Onebusaway::Models::References::Route]) }
      attr_accessor :routes

      sig { returns(T::Array[Onebusaway::Models::References::Situation]) }
      attr_accessor :situations

      sig { returns(T::Array[Onebusaway::Models::References::Stop]) }
      attr_accessor :stops

      sig { returns(T::Array[Onebusaway::Models::References::StopTime]) }
      attr_accessor :stop_times

      sig { returns(T::Array[Onebusaway::Models::References::Trip]) }
      attr_accessor :trips

      sig do
        params(
          agencies: T::Array[Onebusaway::Models::References::Agency],
          routes: T::Array[Onebusaway::Models::References::Route],
          situations: T::Array[Onebusaway::Models::References::Situation],
          stops: T::Array[Onebusaway::Models::References::Stop],
          stop_times: T::Array[Onebusaway::Models::References::StopTime],
          trips: T::Array[Onebusaway::Models::References::Trip]
        ).void
      end
      def initialize(agencies:, routes:, situations:, stops:, stop_times:, trips:)
      end

      sig do
        override.returns(
          {
            agencies: T::Array[Onebusaway::Models::References::Agency],
            routes: T::Array[Onebusaway::Models::References::Route],
            situations: T::Array[Onebusaway::Models::References::Situation],
            stops: T::Array[Onebusaway::Models::References::Stop],
            stop_times: T::Array[Onebusaway::Models::References::StopTime],
            trips: T::Array[Onebusaway::Models::References::Trip]
          }
        )
      end
      def to_hash
      end

      class Agency < Onebusaway::BaseModel
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
          ).void
        end
        def initialize(
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
          override.returns(
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

      class Route < Onebusaway::BaseModel
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
          ).void
        end
        def initialize(
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
          override.returns(
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

      class Situation < Onebusaway::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :creation_time

        sig { returns(T.nilable(T::Array[Onebusaway::Models::References::Situation::ActiveWindow])) }
        attr_reader :active_windows

        sig { params(active_windows: T::Array[Onebusaway::Models::References::Situation::ActiveWindow]).void }
        attr_writer :active_windows

        sig { returns(T.nilable(T::Array[Onebusaway::Models::References::Situation::AllAffect])) }
        attr_reader :all_affects

        sig { params(all_affects: T::Array[Onebusaway::Models::References::Situation::AllAffect]).void }
        attr_writer :all_affects

        sig { returns(T.nilable(String)) }
        attr_reader :consequence_message

        sig { params(consequence_message: String).void }
        attr_writer :consequence_message

        sig { returns(T.nilable(T::Array[Onebusaway::Models::References::Situation::Consequence])) }
        attr_reader :consequences

        sig { params(consequences: T::Array[Onebusaway::Models::References::Situation::Consequence]).void }
        attr_writer :consequences

        sig { returns(T.nilable(Onebusaway::Models::References::Situation::Description)) }
        attr_reader :description

        sig { params(description: Onebusaway::Models::References::Situation::Description).void }
        attr_writer :description

        sig { returns(T.nilable(T::Array[Onebusaway::Models::References::Situation::PublicationWindow])) }
        attr_reader :publication_windows

        sig do
          params(publication_windows: T::Array[Onebusaway::Models::References::Situation::PublicationWindow]).void
        end
        attr_writer :publication_windows

        sig { returns(T.nilable(Symbol)) }
        attr_reader :reason

        sig { params(reason: Symbol).void }
        attr_writer :reason

        sig { returns(T.nilable(String)) }
        attr_reader :severity

        sig { params(severity: String).void }
        attr_writer :severity

        sig { returns(T.nilable(Onebusaway::Models::References::Situation::Summary)) }
        attr_reader :summary

        sig { params(summary: Onebusaway::Models::References::Situation::Summary).void }
        attr_writer :summary

        sig { returns(T.nilable(Onebusaway::Models::References::Situation::URL)) }
        attr_reader :url

        sig { params(url: Onebusaway::Models::References::Situation::URL).void }
        attr_writer :url

        sig do
          params(
            id: String,
            creation_time: Integer,
            active_windows: T::Array[Onebusaway::Models::References::Situation::ActiveWindow],
            all_affects: T::Array[Onebusaway::Models::References::Situation::AllAffect],
            consequence_message: String,
            consequences: T::Array[Onebusaway::Models::References::Situation::Consequence],
            description: Onebusaway::Models::References::Situation::Description,
            publication_windows: T::Array[Onebusaway::Models::References::Situation::PublicationWindow],
            reason: Symbol,
            severity: String,
            summary: Onebusaway::Models::References::Situation::Summary,
            url: Onebusaway::Models::References::Situation::URL
          ).void
        end
        def initialize(
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
          override.returns(
            {
              id: String,
              creation_time: Integer,
              active_windows: T::Array[Onebusaway::Models::References::Situation::ActiveWindow],
              all_affects: T::Array[Onebusaway::Models::References::Situation::AllAffect],
              consequence_message: String,
              consequences: T::Array[Onebusaway::Models::References::Situation::Consequence],
              description: Onebusaway::Models::References::Situation::Description,
              publication_windows: T::Array[Onebusaway::Models::References::Situation::PublicationWindow],
              reason: Symbol,
              severity: String,
              summary: Onebusaway::Models::References::Situation::Summary,
              url: Onebusaway::Models::References::Situation::URL
            }
          )
        end
        def to_hash
        end

        class ActiveWindow < Onebusaway::BaseModel
          sig { returns(T.nilable(Integer)) }
          attr_reader :from

          sig { params(from: Integer).void }
          attr_writer :from

          sig { returns(T.nilable(Integer)) }
          attr_reader :to

          sig { params(to: Integer).void }
          attr_writer :to

          sig { params(from: Integer, to: Integer).void }
          def initialize(from: nil, to: nil)
          end

          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash
          end
        end

        class AllAffect < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :agency_id

          sig { params(agency_id: String).void }
          attr_writer :agency_id

          sig { returns(T.nilable(String)) }
          attr_reader :application_id

          sig { params(application_id: String).void }
          attr_writer :application_id

          sig { returns(T.nilable(String)) }
          attr_reader :direction_id

          sig { params(direction_id: String).void }
          attr_writer :direction_id

          sig { returns(T.nilable(String)) }
          attr_reader :route_id

          sig { params(route_id: String).void }
          attr_writer :route_id

          sig { returns(T.nilable(String)) }
          attr_reader :stop_id

          sig { params(stop_id: String).void }
          attr_writer :stop_id

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
            ).void
          end
          def initialize(
            agency_id: nil,
            application_id: nil,
            direction_id: nil,
            route_id: nil,
            stop_id: nil,
            trip_id: nil
          )
          end

          sig do
            override.returns(
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

        class Consequence < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :condition

          sig { params(condition: String).void }
          attr_writer :condition

          sig { returns(T.nilable(Onebusaway::Models::References::Situation::Consequence::ConditionDetails)) }
          attr_reader :condition_details

          sig do
            params(condition_details: Onebusaway::Models::References::Situation::Consequence::ConditionDetails).void
          end
          attr_writer :condition_details

          sig do
            params(
              condition: String,
              condition_details: Onebusaway::Models::References::Situation::Consequence::ConditionDetails
            ).void
          end
          def initialize(condition: nil, condition_details: nil)
          end

          sig do
            override.returns(
              {
                condition: String,
                condition_details: Onebusaway::Models::References::Situation::Consequence::ConditionDetails
              }
            )
          end
          def to_hash
          end

          class ConditionDetails < Onebusaway::BaseModel
            sig do
              returns(T.nilable(Onebusaway::Models::References::Situation::Consequence::ConditionDetails::DiversionPath))
            end
            attr_reader :diversion_path

            sig do
              params(
                diversion_path: Onebusaway::Models::References::Situation::Consequence::ConditionDetails::DiversionPath
              ).void
            end
            attr_writer :diversion_path

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :diversion_stop_ids

            sig { params(diversion_stop_ids: T::Array[String]).void }
            attr_writer :diversion_stop_ids

            sig do
              params(
                diversion_path: Onebusaway::Models::References::Situation::Consequence::ConditionDetails::DiversionPath,
                diversion_stop_ids: T::Array[String]
              ).void
            end
            def initialize(diversion_path: nil, diversion_stop_ids: nil)
            end

            sig do
              override.returns(
                {
                  diversion_path: Onebusaway::Models::References::Situation::Consequence::ConditionDetails::DiversionPath, diversion_stop_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class DiversionPath < Onebusaway::BaseModel
              sig { returns(T.nilable(Integer)) }
              attr_reader :length

              sig { params(length: Integer).void }
              attr_writer :length

              sig { returns(T.nilable(String)) }
              attr_reader :levels

              sig { params(levels: String).void }
              attr_writer :levels

              sig { returns(T.nilable(String)) }
              attr_reader :points

              sig { params(points: String).void }
              attr_writer :points

              sig { params(length: Integer, levels: String, points: String).void }
              def initialize(length: nil, levels: nil, points: nil)
              end

              sig { override.returns({length: Integer, levels: String, points: String}) }
              def to_hash
              end
            end
          end
        end

        class Description < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).void }
          def initialize(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end

        class PublicationWindow < Onebusaway::BaseModel
          sig { returns(Integer) }
          attr_accessor :from

          sig { returns(Integer) }
          attr_accessor :to

          sig { params(from: Integer, to: Integer).void }
          def initialize(from:, to:)
          end

          sig { override.returns({from: Integer, to: Integer}) }
          def to_hash
          end
        end

        class Reason < Onebusaway::Enum
          abstract!

          EQUIPMENT_REASON = :equipmentReason
          ENVIRONMENT_REASON = :environmentReason
          PERSONNEL_REASON = :personnelReason
          MISCELLANEOUS_REASON = :miscellaneousReason
          SECURITY_ALERT = :securityAlert

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Summary < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).void }
          def initialize(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end

        class URL < Onebusaway::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(lang: String, value: String).void }
          def initialize(lang: nil, value: nil)
          end

          sig { override.returns({lang: String, value: String}) }
          def to_hash
          end
        end
      end

      class Stop < Onebusaway::BaseModel
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
          ).void
        end
        def initialize(
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
          override.returns(
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

      class StopTime < Onebusaway::BaseModel
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
          ).void
        end
        def initialize(
          arrival_time: nil,
          departure_time: nil,
          distance_along_trip: nil,
          historical_occupancy: nil,
          stop_headsign: nil,
          stop_id: nil
        )
        end

        sig do
          override.returns(
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

      class Trip < Onebusaway::BaseModel
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
          ).void
        end
        def initialize(
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
          override.returns(
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
