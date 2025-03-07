# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class References < OnebusawaySDK::BaseModel
      # @!attribute agencies
      #
      #   @return [Array<OnebusawaySDK::Models::References::Agency>]
      required :agencies, -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Agency] }

      # @!attribute routes
      #
      #   @return [Array<OnebusawaySDK::Models::References::Route>]
      required :routes, -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Route] }

      # @!attribute situations
      #
      #   @return [Array<OnebusawaySDK::Models::References::Situation>]
      required :situations, -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Situation] }

      # @!attribute stops
      #
      #   @return [Array<OnebusawaySDK::Models::References::Stop>]
      required :stops, -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Stop] }

      # @!attribute stop_times
      #
      #   @return [Array<OnebusawaySDK::Models::References::StopTime>]
      required :stop_times,
               -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::StopTime] },
               api_name: :stopTimes

      # @!attribute trips
      #
      #   @return [Array<OnebusawaySDK::Models::References::Trip>]
      required :trips, -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Trip] }

      # @!parse
      #   # @param agencies [Array<OnebusawaySDK::Models::References::Agency>]
      #   # @param routes [Array<OnebusawaySDK::Models::References::Route>]
      #   # @param situations [Array<OnebusawaySDK::Models::References::Situation>]
      #   # @param stops [Array<OnebusawaySDK::Models::References::Stop>]
      #   # @param stop_times [Array<OnebusawaySDK::Models::References::StopTime>]
      #   # @param trips [Array<OnebusawaySDK::Models::References::Trip>]
      #   #
      #   def initialize(agencies:, routes:, situations:, stops:, stop_times:, trips:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Agency < OnebusawaySDK::BaseModel
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

        # @!attribute [r] disclaimer
        #
        #   @return [String, nil]
        optional :disclaimer, String

        # @!parse
        #   # @return [String]
        #   attr_writer :disclaimer

        # @!attribute [r] email
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] fare_url
        #
        #   @return [String, nil]
        optional :fare_url, String, api_name: :fareUrl

        # @!parse
        #   # @return [String]
        #   attr_writer :fare_url

        # @!attribute [r] lang
        #
        #   @return [String, nil]
        optional :lang, String

        # @!parse
        #   # @return [String]
        #   attr_writer :lang

        # @!attribute [r] phone
        #
        #   @return [String, nil]
        optional :phone, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone

        # @!attribute [r] private_service
        #
        #   @return [Boolean, nil]
        optional :private_service, OnebusawaySDK::BooleanModel, api_name: :privateService

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :private_service

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   # @param timezone [String]
        #   # @param url [String]
        #   # @param disclaimer [String]
        #   # @param email [String]
        #   # @param fare_url [String]
        #   # @param lang [String]
        #   # @param phone [String]
        #   # @param private_service [Boolean]
        #   #
        #   def initialize(
        #     id:,
        #     name:,
        #     timezone:,
        #     url:,
        #     disclaimer: nil,
        #     email: nil,
        #     fare_url: nil,
        #     lang: nil,
        #     phone: nil,
        #     private_service: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end

      class Route < OnebusawaySDK::BaseModel
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

        # @!attribute [r] color
        #
        #   @return [String, nil]
        optional :color, String

        # @!parse
        #   # @return [String]
        #   attr_writer :color

        # @!attribute [r] description
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] long_name
        #
        #   @return [String, nil]
        optional :long_name, String, api_name: :longName

        # @!parse
        #   # @return [String]
        #   attr_writer :long_name

        # @!attribute [r] null_safe_short_name
        #
        #   @return [String, nil]
        optional :null_safe_short_name, String, api_name: :nullSafeShortName

        # @!parse
        #   # @return [String]
        #   attr_writer :null_safe_short_name

        # @!attribute [r] short_name
        #
        #   @return [String, nil]
        optional :short_name, String, api_name: :shortName

        # @!parse
        #   # @return [String]
        #   attr_writer :short_name

        # @!attribute [r] text_color
        #
        #   @return [String, nil]
        optional :text_color, String, api_name: :textColor

        # @!parse
        #   # @return [String]
        #   attr_writer :text_color

        # @!attribute [r] url
        #
        #   @return [String, nil]
        optional :url, String

        # @!parse
        #   # @return [String]
        #   attr_writer :url

        # @!parse
        #   # @param id [String]
        #   # @param agency_id [String]
        #   # @param type [Integer]
        #   # @param color [String]
        #   # @param description [String]
        #   # @param long_name [String]
        #   # @param null_safe_short_name [String]
        #   # @param short_name [String]
        #   # @param text_color [String]
        #   # @param url [String]
        #   #
        #   def initialize(
        #     id:,
        #     agency_id:,
        #     type:,
        #     color: nil,
        #     description: nil,
        #     long_name: nil,
        #     null_safe_short_name: nil,
        #     short_name: nil,
        #     text_color: nil,
        #     url: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end

      class Situation < OnebusawaySDK::BaseModel
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

        # @!attribute [r] active_windows
        #
        #   @return [Array<OnebusawaySDK::Models::References::Situation::ActiveWindow>, nil]
        optional :active_windows,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Situation::ActiveWindow] },
                 api_name: :activeWindows

        # @!parse
        #   # @return [Array<OnebusawaySDK::Models::References::Situation::ActiveWindow>]
        #   attr_writer :active_windows

        # @!attribute [r] all_affects
        #
        #   @return [Array<OnebusawaySDK::Models::References::Situation::AllAffect>, nil]
        optional :all_affects,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Situation::AllAffect] },
                 api_name: :allAffects

        # @!parse
        #   # @return [Array<OnebusawaySDK::Models::References::Situation::AllAffect>]
        #   attr_writer :all_affects

        # @!attribute [r] consequence_message
        #   Message regarding the consequence of the situation.
        #
        #   @return [String, nil]
        optional :consequence_message, String, api_name: :consequenceMessage

        # @!parse
        #   # @return [String]
        #   attr_writer :consequence_message

        # @!attribute [r] consequences
        #
        #   @return [Array<OnebusawaySDK::Models::References::Situation::Consequence>, nil]
        optional :consequences,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Situation::Consequence] }

        # @!parse
        #   # @return [Array<OnebusawaySDK::Models::References::Situation::Consequence>]
        #   attr_writer :consequences

        # @!attribute [r] description
        #
        #   @return [OnebusawaySDK::Models::References::Situation::Description, nil]
        optional :description, -> { OnebusawaySDK::Models::References::Situation::Description }

        # @!parse
        #   # @return [OnebusawaySDK::Models::References::Situation::Description]
        #   attr_writer :description

        # @!attribute [r] publication_windows
        #
        #   @return [Array<OnebusawaySDK::Models::References::Situation::PublicationWindow>, nil]
        optional :publication_windows,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::References::Situation::PublicationWindow] },
                 api_name: :publicationWindows

        # @!parse
        #   # @return [Array<OnebusawaySDK::Models::References::Situation::PublicationWindow>]
        #   attr_writer :publication_windows

        # @!attribute [r] reason
        #   Reason for the service alert, taken from TPEG codes.
        #
        #   @return [Symbol, OnebusawaySDK::Models::References::Situation::Reason, nil]
        optional :reason, enum: -> { OnebusawaySDK::Models::References::Situation::Reason }

        # @!parse
        #   # @return [Symbol, OnebusawaySDK::Models::References::Situation::Reason]
        #   attr_writer :reason

        # @!attribute [r] severity
        #   Severity of the situation.
        #
        #   @return [String, nil]
        optional :severity, String

        # @!parse
        #   # @return [String]
        #   attr_writer :severity

        # @!attribute [r] summary
        #
        #   @return [OnebusawaySDK::Models::References::Situation::Summary, nil]
        optional :summary, -> { OnebusawaySDK::Models::References::Situation::Summary }

        # @!parse
        #   # @return [OnebusawaySDK::Models::References::Situation::Summary]
        #   attr_writer :summary

        # @!attribute [r] url
        #
        #   @return [OnebusawaySDK::Models::References::Situation::URL, nil]
        optional :url, -> { OnebusawaySDK::Models::References::Situation::URL }

        # @!parse
        #   # @return [OnebusawaySDK::Models::References::Situation::URL]
        #   attr_writer :url

        # @!parse
        #   # @param id [String]
        #   # @param creation_time [Integer]
        #   # @param active_windows [Array<OnebusawaySDK::Models::References::Situation::ActiveWindow>]
        #   # @param all_affects [Array<OnebusawaySDK::Models::References::Situation::AllAffect>]
        #   # @param consequence_message [String]
        #   # @param consequences [Array<OnebusawaySDK::Models::References::Situation::Consequence>]
        #   # @param description [OnebusawaySDK::Models::References::Situation::Description]
        #   # @param publication_windows [Array<OnebusawaySDK::Models::References::Situation::PublicationWindow>]
        #   # @param reason [Symbol, OnebusawaySDK::Models::References::Situation::Reason]
        #   # @param severity [String]
        #   # @param summary [OnebusawaySDK::Models::References::Situation::Summary]
        #   # @param url [OnebusawaySDK::Models::References::Situation::URL]
        #   #
        #   def initialize(
        #     id:,
        #     creation_time:,
        #     active_windows: nil,
        #     all_affects: nil,
        #     consequence_message: nil,
        #     consequences: nil,
        #     description: nil,
        #     publication_windows: nil,
        #     reason: nil,
        #     severity: nil,
        #     summary: nil,
        #     url: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        class ActiveWindow < OnebusawaySDK::BaseModel
          # @!attribute [r] from
          #   Start time of the active window as a Unix timestamp.
          #
          #   @return [Integer, nil]
          optional :from, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :from

          # @!attribute [r] to
          #   End time of the active window as a Unix timestamp.
          #
          #   @return [Integer, nil]
          optional :to, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :to

          # @!parse
          #   # @param from [Integer]
          #   # @param to [Integer]
          #   #
          #   def initialize(from: nil, to: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end

        class AllAffect < OnebusawaySDK::BaseModel
          # @!attribute [r] agency_id
          #   Identifier for the agency.
          #
          #   @return [String, nil]
          optional :agency_id, String, api_name: :agencyId

          # @!parse
          #   # @return [String]
          #   attr_writer :agency_id

          # @!attribute [r] application_id
          #   Identifier for the application.
          #
          #   @return [String, nil]
          optional :application_id, String, api_name: :applicationId

          # @!parse
          #   # @return [String]
          #   attr_writer :application_id

          # @!attribute [r] direction_id
          #   Identifier for the direction.
          #
          #   @return [String, nil]
          optional :direction_id, String, api_name: :directionId

          # @!parse
          #   # @return [String]
          #   attr_writer :direction_id

          # @!attribute [r] route_id
          #   Identifier for the route.
          #
          #   @return [String, nil]
          optional :route_id, String, api_name: :routeId

          # @!parse
          #   # @return [String]
          #   attr_writer :route_id

          # @!attribute [r] stop_id
          #   Identifier for the stop.
          #
          #   @return [String, nil]
          optional :stop_id, String, api_name: :stopId

          # @!parse
          #   # @return [String]
          #   attr_writer :stop_id

          # @!attribute [r] trip_id
          #   Identifier for the trip.
          #
          #   @return [String, nil]
          optional :trip_id, String, api_name: :tripId

          # @!parse
          #   # @return [String]
          #   attr_writer :trip_id

          # @!parse
          #   # @param agency_id [String]
          #   # @param application_id [String]
          #   # @param direction_id [String]
          #   # @param route_id [String]
          #   # @param stop_id [String]
          #   # @param trip_id [String]
          #   #
          #   def initialize(agency_id: nil, application_id: nil, direction_id: nil, route_id: nil, stop_id: nil, trip_id: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end

        class Consequence < OnebusawaySDK::BaseModel
          # @!attribute [r] condition
          #   Condition of the consequence.
          #
          #   @return [String, nil]
          optional :condition, String

          # @!parse
          #   # @return [String]
          #   attr_writer :condition

          # @!attribute [r] condition_details
          #
          #   @return [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails, nil]
          optional :condition_details,
                   -> { OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails },
                   api_name: :conditionDetails

          # @!parse
          #   # @return [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails]
          #   attr_writer :condition_details

          # @!parse
          #   # @param condition [String]
          #   # @param condition_details [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails]
          #   #
          #   def initialize(condition: nil, condition_details: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

          class ConditionDetails < OnebusawaySDK::BaseModel
            # @!attribute [r] diversion_path
            #
            #   @return [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath, nil]
            optional :diversion_path,
                     -> { OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath },
                     api_name: :diversionPath

            # @!parse
            #   # @return [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath]
            #   attr_writer :diversion_path

            # @!attribute [r] diversion_stop_ids
            #
            #   @return [Array<String>, nil]
            optional :diversion_stop_ids, OnebusawaySDK::ArrayOf[String], api_name: :diversionStopIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :diversion_stop_ids

            # @!parse
            #   # @param diversion_path [OnebusawaySDK::Models::References::Situation::Consequence::ConditionDetails::DiversionPath]
            #   # @param diversion_stop_ids [Array<String>]
            #   #
            #   def initialize(diversion_path: nil, diversion_stop_ids: nil, **) = super

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

            class DiversionPath < OnebusawaySDK::BaseModel
              # @!attribute [r] length
              #   Length of the diversion path.
              #
              #   @return [Integer, nil]
              optional :length, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :length

              # @!attribute [r] levels
              #   Levels of the diversion path.
              #
              #   @return [String, nil]
              optional :levels, String

              # @!parse
              #   # @return [String]
              #   attr_writer :levels

              # @!attribute [r] points
              #   Points of the diversion path.
              #
              #   @return [String, nil]
              optional :points, String

              # @!parse
              #   # @return [String]
              #   attr_writer :points

              # @!parse
              #   # @param length [Integer]
              #   # @param levels [String]
              #   # @param points [String]
              #   #
              #   def initialize(length: nil, levels: nil, points: nil, **) = super

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
            end
          end
        end

        class Description < OnebusawaySDK::BaseModel
          # @!attribute [r] lang
          #   Language of the description.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!parse
          #   # @return [String]
          #   attr_writer :lang

          # @!attribute [r] value
          #   Longer description of the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!parse
          #   # @return [String]
          #   attr_writer :value

          # @!parse
          #   # @param lang [String]
          #   # @param value [String]
          #   #
          #   def initialize(lang: nil, value: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end

        class PublicationWindow < OnebusawaySDK::BaseModel
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

          # @!parse
          #   # @param from [Integer]
          #   # @param to [Integer]
          #   #
          #   def initialize(from:, to:, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end

        # @abstract
        #
        # Reason for the service alert, taken from TPEG codes.
        class Reason < OnebusawaySDK::Enum
          EQUIPMENT_REASON = :equipmentReason
          ENVIRONMENT_REASON = :environmentReason
          PERSONNEL_REASON = :personnelReason
          MISCELLANEOUS_REASON = :miscellaneousReason
          SECURITY_ALERT = :securityAlert

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        class Summary < OnebusawaySDK::BaseModel
          # @!attribute [r] lang
          #   Language of the summary.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!parse
          #   # @return [String]
          #   attr_writer :lang

          # @!attribute [r] value
          #   Short summary of the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!parse
          #   # @return [String]
          #   attr_writer :value

          # @!parse
          #   # @param lang [String]
          #   # @param value [String]
          #   #
          #   def initialize(lang: nil, value: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end

        class URL < OnebusawaySDK::BaseModel
          # @!attribute [r] lang
          #   Language of the URL.
          #
          #   @return [String, nil]
          optional :lang, String

          # @!parse
          #   # @return [String]
          #   attr_writer :lang

          # @!attribute [r] value
          #   URL for more information about the situation.
          #
          #   @return [String, nil]
          optional :value, String

          # @!parse
          #   # @return [String]
          #   attr_writer :value

          # @!parse
          #   # @param lang [String]
          #   # @param value [String]
          #   #
          #   def initialize(lang: nil, value: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end
      end

      class Stop < OnebusawaySDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute lat
        #
        #   @return [Float]
        required :lat, Float

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
        required :route_ids, OnebusawaySDK::ArrayOf[String], api_name: :routeIds

        # @!attribute static_route_ids
        #
        #   @return [Array<String>]
        required :static_route_ids, OnebusawaySDK::ArrayOf[String], api_name: :staticRouteIds

        # @!attribute [r] code
        #
        #   @return [String, nil]
        optional :code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :code

        # @!attribute [r] direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!parse
        #   # @return [String]
        #   attr_writer :direction

        # @!attribute [r] location_type
        #
        #   @return [Integer, nil]
        optional :location_type, Integer, api_name: :locationType

        # @!parse
        #   # @return [Integer]
        #   attr_writer :location_type

        # @!attribute [r] wheelchair_boarding
        #
        #   @return [String, nil]
        optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

        # @!parse
        #   # @return [String]
        #   attr_writer :wheelchair_boarding

        # @!parse
        #   # @param id [String]
        #   # @param lat [Float]
        #   # @param lon [Float]
        #   # @param name [String]
        #   # @param parent [String]
        #   # @param route_ids [Array<String>]
        #   # @param static_route_ids [Array<String>]
        #   # @param code [String]
        #   # @param direction [String]
        #   # @param location_type [Integer]
        #   # @param wheelchair_boarding [String]
        #   #
        #   def initialize(
        #     id:,
        #     lat:,
        #     lon:,
        #     name:,
        #     parent:,
        #     route_ids:,
        #     static_route_ids:,
        #     code: nil,
        #     direction: nil,
        #     location_type: nil,
        #     wheelchair_boarding: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end

      class StopTime < OnebusawaySDK::BaseModel
        # @!attribute [r] arrival_time
        #
        #   @return [Integer, nil]
        optional :arrival_time, Integer, api_name: :arrivalTime

        # @!parse
        #   # @return [Integer]
        #   attr_writer :arrival_time

        # @!attribute [r] departure_time
        #
        #   @return [Integer, nil]
        optional :departure_time, Integer, api_name: :departureTime

        # @!parse
        #   # @return [Integer]
        #   attr_writer :departure_time

        # @!attribute [r] distance_along_trip
        #
        #   @return [Float, nil]
        optional :distance_along_trip, Float, api_name: :distanceAlongTrip

        # @!parse
        #   # @return [Float]
        #   attr_writer :distance_along_trip

        # @!attribute [r] historical_occupancy
        #
        #   @return [String, nil]
        optional :historical_occupancy, String, api_name: :historicalOccupancy

        # @!parse
        #   # @return [String]
        #   attr_writer :historical_occupancy

        # @!attribute [r] stop_headsign
        #
        #   @return [String, nil]
        optional :stop_headsign, String, api_name: :stopHeadsign

        # @!parse
        #   # @return [String]
        #   attr_writer :stop_headsign

        # @!attribute [r] stop_id
        #
        #   @return [String, nil]
        optional :stop_id, String, api_name: :stopId

        # @!parse
        #   # @return [String]
        #   attr_writer :stop_id

        # @!parse
        #   # @param arrival_time [Integer]
        #   # @param departure_time [Integer]
        #   # @param distance_along_trip [Float]
        #   # @param historical_occupancy [String]
        #   # @param stop_headsign [String]
        #   # @param stop_id [String]
        #   #
        #   def initialize(
        #     arrival_time: nil,
        #     departure_time: nil,
        #     distance_along_trip: nil,
        #     historical_occupancy: nil,
        #     stop_headsign: nil,
        #     stop_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end

      class Trip < OnebusawaySDK::BaseModel
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

        # @!attribute [r] block_id
        #
        #   @return [String, nil]
        optional :block_id, String, api_name: :blockId

        # @!parse
        #   # @return [String]
        #   attr_writer :block_id

        # @!attribute [r] direction_id
        #
        #   @return [String, nil]
        optional :direction_id, String, api_name: :directionId

        # @!parse
        #   # @return [String]
        #   attr_writer :direction_id

        # @!attribute [r] peak_offpeak
        #
        #   @return [Integer, nil]
        optional :peak_offpeak, Integer, api_name: :peakOffpeak

        # @!parse
        #   # @return [Integer]
        #   attr_writer :peak_offpeak

        # @!attribute [r] route_short_name
        #
        #   @return [String, nil]
        optional :route_short_name, String, api_name: :routeShortName

        # @!parse
        #   # @return [String]
        #   attr_writer :route_short_name

        # @!attribute [r] shape_id
        #
        #   @return [String, nil]
        optional :shape_id, String, api_name: :shapeId

        # @!parse
        #   # @return [String]
        #   attr_writer :shape_id

        # @!attribute [r] time_zone
        #
        #   @return [String, nil]
        optional :time_zone, String, api_name: :timeZone

        # @!parse
        #   # @return [String]
        #   attr_writer :time_zone

        # @!attribute [r] trip_headsign
        #
        #   @return [String, nil]
        optional :trip_headsign, String, api_name: :tripHeadsign

        # @!parse
        #   # @return [String]
        #   attr_writer :trip_headsign

        # @!attribute [r] trip_short_name
        #
        #   @return [String, nil]
        optional :trip_short_name, String, api_name: :tripShortName

        # @!parse
        #   # @return [String]
        #   attr_writer :trip_short_name

        # @!parse
        #   # @param id [String]
        #   # @param route_id [String]
        #   # @param service_id [String]
        #   # @param block_id [String]
        #   # @param direction_id [String]
        #   # @param peak_offpeak [Integer]
        #   # @param route_short_name [String]
        #   # @param shape_id [String]
        #   # @param time_zone [String]
        #   # @param trip_headsign [String]
        #   # @param trip_short_name [String]
        #   #
        #   def initialize(
        #     id:,
        #     route_id:,
        #     service_id:,
        #     block_id: nil,
        #     direction_id: nil,
        #     peak_offpeak: nil,
        #     route_short_name: nil,
        #     shape_id: nil,
        #     time_zone: nil,
        #     trip_headsign: nil,
        #     trip_short_name: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end
    end
  end
end
