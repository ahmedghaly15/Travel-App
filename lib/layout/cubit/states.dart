abstract class TravelAppStates {}

class TravelAppInitialState extends TravelAppStates {}

class ChangeBottomNavIndexState extends TravelAppStates {}

class GetDataLoadingState extends TravelAppStates {}

class GetDataSuccesState extends TravelAppStates {}

class GetDataErrorState extends TravelAppStates {
  final String? error;
  GetDataErrorState({this.error});
}
