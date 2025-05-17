# frozen_string_literal: true

module OpenTransit
  module Models
    class References < OpenTransit::Internal::Type::BaseModel
      # @!attribute agencies
      #
      #   @return [Array<OpenTransit::References::Agency>]
      required :agencies, -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Agency] }

      # @!attribute routes
      #
      #   @return [Array<OpenTransit::References::Route>]
      required :routes, -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Route] }

      # @!attribute situations
      #
      #   @return [Array<OpenTransit::References::Situation>]
      required :situations, -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Situation] }

      # @!attribute stops
      #
      #   @return [Array<OpenTransit::References::Stop>]
      required :stops, -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Stop] }

      # @!attribute stop_times
      #
      #   @return [Array<OpenTransit::References::StopTime>]
      required :stop_times,
               -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::StopTime] },
               api_name: :stopTimes

      # @!attribute trips
      #
      #   @return [Array<OpenTransit::References::Trip>]
      required :trips, -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Trip] }

      # @!method initialize(agencies:, routes:, situations:, stops:, stop_times:, trips:)
      #   @param agencies [Array<OpenTransit::References::Agency>]
      #   @param routes [Array<OpenTransit::References::Route>]
      #   @param situations [Array<OpenTransit::References::Situation>]
      #   @param stops [Array<OpenTransit::References::Stop>]
      #   @param stop_times [Array<OpenTransit::References::StopTime>]
      #   @param trips [Array<OpenTransit::References::Trip>]

      class Agency < OpenTransit::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute timezone
        #
        #   @return [String]
        required :timezone, String

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute disclaimer
        #
        #   @return [String, nil]
        optional :disclaimer, String

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute fare_url
        #
        #   @return [String, nil]
        optional :fare_url, String, api_name: :fareUrl

        # @!attribute lang
        #
        #   @return [String, nil]
        optional :lang, String

        # @!attribute phone
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute private_service
        #
        #   @return [Boolean, nil]
        optional :private_service, OpenTransit::Internal::Type::Boolean, api_name: :privateService

        # @!method initialize(id:, name:, timezone:, url:, disclaimer: nil, email: nil, fare_url: nil, lang: nil, phone: nil, private_service: nil)
        #   @param id [String]
        #   @param name [String]
        #   @param timezone [String]
        #   @param url [String]
        #   @param disclaimer [String]
        #   @param email [String]
        #   @param fare_url [String]
        #   @param lang [String]
        #   @param phone [String]
        #   @param private_service [Boolean]
      end

      class Route < OpenTransit::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute agency_id
        #
        #   @return [String]
        required :agency_id, String, api_name: :agencyId

        # @!attribute type
        #
        #   @return [Integer]
        required :type, Integer

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute long_name
        #
        #   @return [String, nil]
        optional :long_name, String, api_name: :longName

        # @!attribute null_safe_short_name
        #
        #   @return [String, nil]
        optional :null_safe_short_name, String, api_name: :nullSafeShortName

        # @!attribute short_name
        #
        #   @return [String, nil]
        optional :short_name, String, api_name: :shortName

        # @!attribute text_color
        #
        #   @return [String, nil]
        optional :text_color, String, api_name: :textColor

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id:, agency_id:, type:, color: nil, description: nil, long_name: nil, null_safe_short_name: nil, short_name: nil, text_color: nil, url: nil)
        #   @param id [String]
        #   @param agency_id [String]
        #   @param type [Integer]
        #   @param color [String]
        #   @param description [String]
        #   @param long_name [String]
        #   @param null_safe_short_name [String]
        #   @param short_name [String]
        #   @param text_color [String]
        #   @param url [String]
      end

      class Situation < OpenTransit::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the situation.
        #
        #   @return [String]
        required :id, String

        # @!attribute creation_time
        #   Unix timestamp of when this situation was created.
        #
        #   @return [Integer]
        required :creation_time, Integer, api_name: :creationTime

        # @!attribute active_windows
        #
        #   @return [Array<OpenTransit::References::Situation::ActiveWindow>, nil]
        optional :active_windows,
                 -> {
                   OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Situation::ActiveWindow]
                 },
                 api_name: :activeWindows

        # @!attribute all_affects
        #
        #   @return [Array<OpenTransit::References::Situation::AllAffect>, nil]
        optional :all_affects,
                 -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Situation::AllAffect] },
                 api_name: :allAffects

        # @!attribute consequence_message
        #   Message regarding the consequence of the situation.
        #
        #   @return [String, nil]
        optional :consequence_message, String, api_name: :consequenceMessage

        # @!attribute consequences
        #
        #   @return [Array<OpenTransit::References::Situation::Consequence>, nil]
        optional :consequences,
                 -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Situation::Consequence] }

        # @!attribute description
        #
        #   @return [OpenTransit::References::Situation::Description, nil]
        optional :description, -> { OpenTransit::References::Situation::Description }

        # @!attribute publication_windows
        #
        #   @return [Array<OpenTransit::References::Situation::PublicationWindow>, nil]
        optional :publication_windows,
                 -> {
                   OpenTransit::Internal::Type::ArrayOf[OpenTransit::References::Situation::PublicationWindow]
                 },
                 api_name: :publicationWindows

        # @!attribute reason
        #   Reason for the service alert, taken from TPEG codes.
        #
        #   @return [Symbol, OpenTransit::References::Situation::Reason, nil]
        optional :reason, enum: -> { OpenTransit::References::Situation::Reason }

        # @!attribute severity
        #   Severity of the situation.
        #
        #   @return [String, nil]
        optional :severity, String

        # @!attribute summary
        #
        #   @return [OpenTransit::References::Situation::Summary, nil]
        optional :summary, -> { OpenTransit::References::Situation::Summary }

        # @!attribute url
        #
        #   @return [OpenTransit::References::Situation::URL, nil]
        optional :url, -> { OpenTransit::References::Situation::URL }

        # @!method initialize(id:, creation_time:, active_windows: nil, all_affects: nil, consequence_message: nil, consequences: nil, description: nil, publication_windows: nil, reason: nil, severity: nil, summary: nil, url: nil)
        #   @param id [String] Unique identifier for the situation.
        #
        #   @param creation_time [Integer] Unix timestamp of when this situation was created.
        #
        #   @param active_windows [Array<OpenTransit::References::Situation::ActiveWindow>]
        #
        #   @param all_affects [Array<OpenTransit::References::Situation::AllAffect>]
        #
        #   @param consequence_message [String] Message regarding the consequence of the situation.
        #
        #   @param consequences [Array<OpenTransit::References::Situation::Consequence>]
        #
        #   @param description [OpenTransit::References::Situation::Description]
        #
        #   @param publication_windows [Array<OpenTransit::References::Situation::PublicationWindow>]
        #
        #   @param reason [Symbol, OpenTransit::References::Situation::Reason] Reason for the service alert, taken from TPEG codes.
        #
        #   @param severity [String] Severity of the situation.
        #
        #   @param summary [OpenTransit::References::Situation::Summary]
        #
        #   @param url [OpenTransit::References::Situation::URL]

        class ActiveWindow < OpenTransit::Internal::Type::BaseModel
          # @!attribute from
          #   Start time of the active window as a Unix timestamp.
          #
          #   @return [Integer, nil]
          optional :from, Integer

          # @!attribute to
          #   End time of the active window as a Unix timestamp.
          #
          #   @return [Integer, nil]
          optional :to, Integer

          # @!method initialize(from: nil, to: nil)
          #   @param from [Integer] Start time of the active window as a Unix timestamp.
          #
          #   @param to [Integer] End time of the active window as a Unix timestamp.
        end

        class AllAffect < OpenTransit::Internal::Type::BaseModel
          # @!attribute agency_id
          #   Identifier for the agency.
          #
          #   @return [String, nil]
          optional :agency_id, String, api_name: :agencyId

          # @!attribute application_id
          #   Identifier for the application.
          #
          #   @return [String, nil]
          optional :application_id, String, api_name: :applicationId

          # @!attribute direction_id
          #   Identifier for the direction.
          #
          #   @return [String, nil]
          optional :direction_id, String, api_name: :directionId

          # @!attribute route_id
          #   Identifier for the route.
          #
          #   @return [String, nil]
          optional :route_id, String, api_name: :routeId

          # @!attribute stop_id
          #   Identifier for the stop.
          #
          #   @return [String, nil]
          optional :stop_id, String, api_name: :stopId

          # @!attribute trip_id
          #   Identifier for the trip.
          #
          #   @return [String, nil]
          optional :trip_id, String, api_name: :tripId

          # @!method initialize(agency_id: nil, application_id: nil, direction_id: nil, route_id: nil, stop_id: nil, trip_id: nil)
          #   @param agency_id [String] Identifier for the agency.
          #
          #   @param application_id [String] Identifier for the application.
          #
          #   @param direction_id [String] Identifier for the direction.
          #
          #   @param route_id [String] Identifier for the route.
          #
          #   @param stop_id [String] Identifier for the stop.
          #
          #   @param trip_id [String] Identifier for the trip.
        end

        class Consequence < OpenTransit::Internal::Type::BaseModel
          # @!attribute condition
          #   Condition of the consequence.
          #
          #   @return [String, nil]
          optional :condition, String

          # @!attribute condition_details
          #
          #   @return [OpenTransit::References::Situation::Consequence::ConditionDetails, nil]
          optional :condition_details,
                   -> { OpenTransit::References::Situation::Consequence::ConditionDetails },
                   api_name: :conditionDetails

          # @!method initialize(condition: nil, condition_details: nil)
          #   @param condition [String] Condition of the consequence.
          #
          #   @param condition_details [OpenTransit::References::Situation::Consequence::ConditionDetails]

          # @see OpenTransit::References::Situation::Consequence#condition_details
          class ConditionDetails < OpenTransit::Internal::Type::BaseModel
            # @!attribute diversion_path
            #
            #   @return [OpenTransit::References::Situation::Consequence::ConditionDetails::DiversionPath, nil]
            optional :diversion_path,
                     -> { OpenTransit::References::Situation::Consequence::ConditionDetails::DiversionPath },
                     api_name: :diversionPath

            # @!attribute diversion_stop_ids
            #
            #   @return [Array<String>, nil]
            optional :diversion_stop_ids,
                     OpenTransit::Internal::Type::ArrayOf[String],
                     api_name: :diversionStopIds

            # @!method initialize(diversion_path: nil, diversion_stop_ids: nil)
            #   @param diversion_path [OpenTransit::References::Situation::Consequence::ConditionDetails::DiversionPath]
            #   @param diversion_stop_ids [Array<String>]

            # @see OpenTransit::References::Situation::Consequence::ConditionDetails#diversion_path
            class DiversionPath < OpenTransit::Internal::Type::BaseModel
              # @!attribute length
              #   Length of the diversion path.
              #
              #   @return [Integer, nil]
              optional :length, Integer

              # @!attribute levels
              #   Levels of the diversion path.
              #
              #   @return [String, nil]
              optional :levels, String

              # @!attribute points
              #   Points of the diversion path.
              #
              #   @return [String, nil]
              optional :points, String

              # @!method initialize(length: nil, levels: nil, points: nil)
              #   @param length [Integer] Length of the diversion path.
              #
              #   @param levels [String] Levels of the diversion path.
              #
              #   @param points [String] Points of the diversion path.
            end
          end
        end

        # @see OpenTransit::References::Situation#description
        class Description < OpenTransit::Internal::Type::BaseModel
          # @!attribute lang
          #   Language of the description.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!attribute value
          #   Longer description of the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(lang: nil, value: nil)
          #   @param lang [String] Language of the description.
          #
          #   @param value [String] Longer description of the situation.
        end

        class PublicationWindow < OpenTransit::Internal::Type::BaseModel
          # @!attribute from
          #   Start time of the time window as a Unix timestamp.
          #
          #   @return [Integer]
          required :from, Integer

          # @!attribute to
          #   End time of the time window as a Unix timestamp.
          #
          #   @return [Integer]
          required :to, Integer

          # @!method initialize(from:, to:)
          #   @param from [Integer] Start time of the time window as a Unix timestamp.
          #
          #   @param to [Integer] End time of the time window as a Unix timestamp.
        end

        # Reason for the service alert, taken from TPEG codes.
        #
        # @see OpenTransit::References::Situation#reason
        module Reason
          extend OpenTransit::Internal::Type::Enum

          EQUIPMENT_REASON = :equipmentReason
          ENVIRONMENT_REASON = :environmentReason
          PERSONNEL_REASON = :personnelReason
          MISCELLANEOUS_REASON = :miscellaneousReason
          SECURITY_ALERT = :securityAlert

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see OpenTransit::References::Situation#summary
        class Summary < OpenTransit::Internal::Type::BaseModel
          # @!attribute lang
          #   Language of the summary.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!attribute value
          #   Short summary of the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(lang: nil, value: nil)
          #   @param lang [String] Language of the summary.
          #
          #   @param value [String] Short summary of the situation.
        end

        # @see OpenTransit::References::Situation#url
        class URL < OpenTransit::Internal::Type::BaseModel
          # @!attribute lang
          #   Language of the URL.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!attribute value
          #   URL for more information about the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(lang: nil, value: nil)
          #   @param lang [String] Language of the URL.
          #
          #   @param value [String] URL for more information about the situation.
        end
      end

      class Stop < OpenTransit::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute lat
        #
        #   @return [Float]
        required :lat, Float

        # @!attribute location_type
        #
        #   @return [Integer]
        required :location_type, Integer, api_name: :locationType

        # @!attribute lon
        #
        #   @return [Float]
        required :lon, Float

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute parent
        #
        #   @return [String]
        required :parent, String

        # @!attribute route_ids
        #
        #   @return [Array<String>]
        required :route_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :routeIds

        # @!attribute static_route_ids
        #
        #   @return [Array<String>]
        required :static_route_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :staticRouteIds

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute wheelchair_boarding
        #
        #   @return [String, nil]
        optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

        # @!method initialize(id:, lat:, location_type:, lon:, name:, parent:, route_ids:, static_route_ids:, code: nil, direction: nil, wheelchair_boarding: nil)
        #   @param id [String]
        #   @param lat [Float]
        #   @param location_type [Integer]
        #   @param lon [Float]
        #   @param name [String]
        #   @param parent [String]
        #   @param route_ids [Array<String>]
        #   @param static_route_ids [Array<String>]
        #   @param code [String]
        #   @param direction [String]
        #   @param wheelchair_boarding [String]
      end

      class StopTime < OpenTransit::Internal::Type::BaseModel
        # @!attribute arrival_time
        #
        #   @return [Integer, nil]
        optional :arrival_time, Integer, api_name: :arrivalTime

        # @!attribute departure_time
        #
        #   @return [Integer, nil]
        optional :departure_time, Integer, api_name: :departureTime

        # @!attribute distance_along_trip
        #
        #   @return [Float, nil]
        optional :distance_along_trip, Float, api_name: :distanceAlongTrip

        # @!attribute historical_occupancy
        #
        #   @return [String, nil]
        optional :historical_occupancy, String, api_name: :historicalOccupancy

        # @!attribute stop_headsign
        #
        #   @return [String, nil]
        optional :stop_headsign, String, api_name: :stopHeadsign

        # @!attribute stop_id
        #
        #   @return [String, nil]
        optional :stop_id, String, api_name: :stopId

        # @!method initialize(arrival_time: nil, departure_time: nil, distance_along_trip: nil, historical_occupancy: nil, stop_headsign: nil, stop_id: nil)
        #   @param arrival_time [Integer]
        #   @param departure_time [Integer]
        #   @param distance_along_trip [Float]
        #   @param historical_occupancy [String]
        #   @param stop_headsign [String]
        #   @param stop_id [String]
      end

      class Trip < OpenTransit::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute route_id
        #
        #   @return [String]
        required :route_id, String, api_name: :routeId

        # @!attribute service_id
        #
        #   @return [String]
        required :service_id, String, api_name: :serviceId

        # @!attribute block_id
        #
        #   @return [String, nil]
        optional :block_id, String, api_name: :blockId

        # @!attribute direction_id
        #
        #   @return [String, nil]
        optional :direction_id, String, api_name: :directionId

        # @!attribute peak_offpeak
        #
        #   @return [Integer, nil]
        optional :peak_offpeak, Integer, api_name: :peakOffpeak

        # @!attribute route_short_name
        #
        #   @return [String, nil]
        optional :route_short_name, String, api_name: :routeShortName

        # @!attribute shape_id
        #
        #   @return [String, nil]
        optional :shape_id, String, api_name: :shapeId

        # @!attribute time_zone
        #
        #   @return [String, nil]
        optional :time_zone, String, api_name: :timeZone

        # @!attribute trip_headsign
        #
        #   @return [String, nil]
        optional :trip_headsign, String, api_name: :tripHeadsign

        # @!attribute trip_short_name
        #
        #   @return [String, nil]
        optional :trip_short_name, String, api_name: :tripShortName

        # @!method initialize(id:, route_id:, service_id:, block_id: nil, direction_id: nil, peak_offpeak: nil, route_short_name: nil, shape_id: nil, time_zone: nil, trip_headsign: nil, trip_short_name: nil)
        #   @param id [String]
        #   @param route_id [String]
        #   @param service_id [String]
        #   @param block_id [String]
        #   @param direction_id [String]
        #   @param peak_offpeak [Integer]
        #   @param route_short_name [String]
        #   @param shape_id [String]
        #   @param time_zone [String]
        #   @param trip_headsign [String]
        #   @param trip_short_name [String]
      end
    end
  end
end
