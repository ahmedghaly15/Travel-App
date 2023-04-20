import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/cubit/cubit.dart';
import 'package:travel_app/layout/cubit/states.dart';

class TravelLayout extends StatelessWidget {
  const TravelLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelAppCubit(),
      child: BlocConsumer<TravelAppCubit, TravelAppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          TravelAppCubit cubit = TravelAppCubit.getObject(context);
          return Scaffold(
            body: cubit.views[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
