import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/cubit/states.dart';
import 'package:travel_app/views/nav_views/bar_item_view.dart';
import 'package:travel_app/views/nav_views/main_view.dart';
import 'package:travel_app/views/nav_views/profile_view.dart';
import 'package:travel_app/views/nav_views/search_view.dart';

class TravelAppCubit extends Cubit<TravelAppStates> {
  TravelAppCubit() : super(TravelAppInitialState());

  static TravelAppCubit getObject(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<Widget> views = const [
    MainView(),
    BarItemView(),
    SearchView(),
    ProfileView(),
  ];

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNavIndexState());
  }
}
