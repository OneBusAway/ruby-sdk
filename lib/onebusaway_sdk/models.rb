# frozen_string_literal: true

module OnebusawaySDK
  [
    OnebusawaySDK::Internal::Type::BaseModel,
    *OnebusawaySDK::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, OnebusawaySDK::Internal::AnyHash) } }
  end

  [
    *OnebusawaySDK::Internal::Type::Enum.included_modules,
    *OnebusawaySDK::Internal::Type::Union.included_modules
  ].each do |cls|
    cls.constants.each do |name|
      case cls.const_get(name)
      in true | false
        cls.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, cls) } }
        cls.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
      in Integer
        cls.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, cls) } }
        cls.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
      in Float
        cls.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, cls) } }
        cls.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
      in Symbol
        cls.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, cls) } }
        cls.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
      else
      end
    end
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
