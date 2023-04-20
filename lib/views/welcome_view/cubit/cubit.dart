import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/shared/constants.dart';
import 'package:travel_app/views/nav_views/main_view.dart';
import 'package:travel_app/views/welcome_view/cubit/states.dart';

class WelcomeViewCubit extends Cubit<WelcomeViewStates> {
  WelcomeViewCubit() : super(WelcomeViewInitialState());

  static WelcomeViewCubit getObject(context) => BlocProvider.of(context);

  void navigateDirectlyToMainView(BuildContext context) {
    navigateAndFinish(context, view: const MainView());
    emit(SkipWelcomeViewSuccessState());
  }
}
