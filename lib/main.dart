import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/services/data_services.dart';
import 'package:travel_app/shared/bloc_observer.dart';
import 'package:travel_app/views/welcome_view/welcome_view.dart';

import 'layout/cubit/cubit.dart';

void main() {
  //===================== Observing My Bloc =====================
  Bloc.observer = MyBlocObserver();
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelAppCubit(data: DataServices())..getData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const WelcomeView(),
      ),
    );
  }
}
