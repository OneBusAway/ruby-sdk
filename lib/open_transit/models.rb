# frozen_string_literal: true

module OpenTransit
  [OpenTransit::Internal::Type::BaseModel, *OpenTransit::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, OpenTransit::Internal::AnyHash) } }
  end

  [
    *OpenTransit::Internal::Type::Enum.included_modules,
    *OpenTransit::Internal::Type::Union.included_modules
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

  AgenciesWithCoverageListParams = OpenTransit::Models::AgenciesWithCoverageListParams

  AgencyRetrieveParams = OpenTransit::Models::AgencyRetrieveParams

  ArrivalAndDepartureListParams = OpenTransit::Models::ArrivalAndDepartureListParams

  ArrivalAndDepartureRetrieveParams = OpenTransit::Models::ArrivalAndDepartureRetrieveParams

  BlockRetrieveParams = OpenTransit::Models::BlockRetrieveParams

  ConfigRetrieveParams = OpenTransit::Models::ConfigRetrieveParams

  CurrentTimeRetrieveParams = OpenTransit::Models::CurrentTimeRetrieveParams

  References = OpenTransit::Models::References

  ReportProblemWithStopRetrieveParams = OpenTransit::Models::ReportProblemWithStopRetrieveParams

  ReportProblemWithTripRetrieveParams = OpenTransit::Models::ReportProblemWithTripRetrieveParams

  ResponseWrapper = OpenTransit::Models::ResponseWrapper

  RouteIDsForAgencyListParams = OpenTransit::Models::RouteIDsForAgencyListParams

  RouteRetrieveParams = OpenTransit::Models::RouteRetrieveParams

  RoutesForAgencyListParams = OpenTransit::Models::RoutesForAgencyListParams

  RoutesForLocationListParams = OpenTransit::Models::RoutesForLocationListParams

  ScheduleForRouteRetrieveParams = OpenTransit::Models::ScheduleForRouteRetrieveParams

  ScheduleForStopRetrieveParams = OpenTransit::Models::ScheduleForStopRetrieveParams

  SearchForRouteListParams = OpenTransit::Models::SearchForRouteListParams

  SearchForStopListParams = OpenTransit::Models::SearchForStopListParams

  ShapeRetrieveParams = OpenTransit::Models::ShapeRetrieveParams

  StopIDsForAgencyListParams = OpenTransit::Models::StopIDsForAgencyListParams

  StopRetrieveParams = OpenTransit::Models::StopRetrieveParams

  StopsForAgencyListParams = OpenTransit::Models::StopsForAgencyListParams

  StopsForLocationListParams = OpenTransit::Models::StopsForLocationListParams

  StopsForRouteListParams = OpenTransit::Models::StopsForRouteListParams

  TripDetailRetrieveParams = OpenTransit::Models::TripDetailRetrieveParams

  TripForVehicleRetrieveParams = OpenTransit::Models::TripForVehicleRetrieveParams

  TripRetrieveParams = OpenTransit::Models::TripRetrieveParams

  TripsForLocationListParams = OpenTransit::Models::TripsForLocationListParams

  TripsForRouteListParams = OpenTransit::Models::TripsForRouteListParams

  VehiclesForAgencyListParams = OpenTransit::Models::VehiclesForAgencyListParams
end
