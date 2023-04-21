import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/cubit/cubit.dart';
import 'package:travel_app/layout/cubit/states.dart';

import '../shared/colors.dart';

class TravelLayout extends StatelessWidget {
  const TravelLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelAppCubit, TravelAppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        TravelAppCubit cubit = TravelAppCubit.getObject(context);
        return Scaffold(
          body: ConditionalBuilder(
            condition: state is! GetDataLoadingState,
            builder: (context) => cubit.views[cubit.currentIndex],
            fallback: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColors.mainColor,
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 0.1,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              items: cubit.bottomNavBarItems,
              currentIndex: cubit.currentIndex,
              onTap: (int index) => cubit.changeBottomNavIndex(index),
              type: BottomNavigationBarType.shifting,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              selectedItemColor: AppColors.mainColor,
              unselectedItemColor: AppColors.mainColor.withOpacity(0.3),
              selectedIconTheme: const IconThemeData(size: 28),
              unselectedIconTheme: const IconThemeData(size: 25),
            ),
          ),
        );
      },
    );
  }
}
