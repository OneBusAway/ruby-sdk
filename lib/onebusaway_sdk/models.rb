# frozen_string_literal: true

module OnebusawaySDK
  [
    OnebusawaySDK::Internal::Type::BaseModel,
    *OnebusawaySDK::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, OnebusawaySDK::Internal::AnyHash) } }
  end

  OnebusawaySDK::Internal::Util.walk_namespaces(OnebusawaySDK::Models).each do |mod|
    case mod
    in OnebusawaySDK::Internal::Type::Enum | OnebusawaySDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  OnebusawaySDK::Internal::Util.walk_namespaces(OnebusawaySDK::Models)
                               .lazy
                               .grep(OnebusawaySDK::Internal::Type::Union)
                               .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AgenciesWithCoverageListParams = OnebusawaySDK::Models::AgenciesWithCoverageListParams

  AgencyRetrieveParams = OnebusawaySDK::Models::AgencyRetrieveParams

  ArrivalAndDepartureListParams = OnebusawaySDK::Models::ArrivalAndDepartureListParams

  ArrivalAndDepartureRetrieveParams = OnebusawaySDK::Models::ArrivalAndDepartureRetrieveParams

  BlockRetrieveParams = OnebusawaySDK::Models::BlockRetrieveParams

  ConfigRetrieveParams = OnebusawaySDK::Models::ConfigRetrieveParams

  CurrentTimeRetrieveParams = OnebusawaySDK::Models::CurrentTimeRetrieveParams

  References = OnebusawaySDK::Models::References

  ReportProblemWithStopRetrieveParams = OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams

  ReportProblemWithTripRetrieveParams = OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams

  ResponseWrapper = OnebusawaySDK::Models::ResponseWrapper

  RouteIDsForAgencyListParams = OnebusawaySDK::Models::RouteIDsForAgencyListParams

  RouteRetrieveParams = OnebusawaySDK::Models::RouteRetrieveParams

  RoutesForAgencyListParams = OnebusawaySDK::Models::RoutesForAgencyListParams

  RoutesForLocationListParams = OnebusawaySDK::Models::RoutesForLocationListParams

  ScheduleForRouteRetrieveParams = OnebusawaySDK::Models::ScheduleForRouteRetrieveParams

  ScheduleForStopRetrieveParams = OnebusawaySDK::Models::ScheduleForStopRetrieveParams

  SearchForRouteListParams = OnebusawaySDK::Models::SearchForRouteListParams

  SearchForStopListParams = OnebusawaySDK::Models::SearchForStopListParams

  ShapeRetrieveParams = OnebusawaySDK::Models::ShapeRetrieveParams

  StopIDsForAgencyListParams = OnebusawaySDK::Models::StopIDsForAgencyListParams

  StopRetrieveParams = OnebusawaySDK::Models::StopRetrieveParams

  StopsForAgencyListParams = OnebusawaySDK::Models::StopsForAgencyListParams

  StopsForLocationListParams = OnebusawaySDK::Models::StopsForLocationListParams

  StopsForRouteListParams = OnebusawaySDK::Models::StopsForRouteListParams

  TripDetailRetrieveParams = OnebusawaySDK::Models::TripDetailRetrieveParams

  TripForVehicleRetrieveParams = OnebusawaySDK::Models::TripForVehicleRetrieveParams

  TripRetrieveParams = OnebusawaySDK::Models::TripRetrieveParams

  TripsForLocationListParams = OnebusawaySDK::Models::TripsForLocationListParams

  TripsForRouteListParams = OnebusawaySDK::Models::TripsForRouteListParams

  VehiclesForAgencyListParams = OnebusawaySDK::Models::VehiclesForAgencyListParams
end
