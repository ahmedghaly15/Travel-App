import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/cubit/states.dart';
import 'package:travel_app/models/data_model.dart';
import 'package:travel_app/services/data_services.dart';
import 'package:travel_app/views/nav_views/bar_item_view.dart';
import 'package:travel_app/views/nav_views/main_view/main_view.dart';
import 'package:travel_app/views/nav_views/profile_view.dart';
import 'package:travel_app/views/nav_views/search_view.dart';

class TravelAppCubit extends Cubit<TravelAppStates> {
  TravelAppCubit({required this.data}) : super(TravelAppInitialState());

  static TravelAppCubit getObject(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<Widget> views = const [
    MainView(),
    BarItemView(),
    SearchView(),
    ProfileView(),
  ];

  final List<BottomNavigationBarItem> bottomNavBarItems = [
    const BottomNavigationBarItem(
      label: "First tab",
      icon: Icon(Icons.apps),
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      label: "Second tab",
      icon: Icon(Icons.favorite),
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      label: "Third tab",
      icon: Icon(Icons.search),
      backgroundColor: Colors.white,
    ),
    const BottomNavigationBarItem(
      label: "Fourth tab",
      icon: Icon(Icons.person),
      backgroundColor: Colors.white,
    ),
  ];

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavIndexState());
  }

  final DataServices data;
  late final List<DataModel> places;
  void getData() {
    emit(GetDataLoadingState());
    data.getInfo().then((value) {
      places = value;
      emit(GetDataSuccesState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDataErrorState(error: error.toString()));
    });
  }
}
