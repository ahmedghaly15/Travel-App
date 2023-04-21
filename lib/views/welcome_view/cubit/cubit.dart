import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/layout/travel_layout.dart';
import 'package:travel_app/shared/constants.dart';
import 'package:travel_app/views/welcome_view/cubit/states.dart';

import '../../../models/welcome_model.dart';

class WelcomeViewCubit extends Cubit<WelcomeViewStates> {
  WelcomeViewCubit() : super(WelcomeViewInitialState());

  static WelcomeViewCubit getObject(context) => BlocProvider.of(context);

  PageController welcomeViewController = PageController();

  final List<WelcomeModel> welcomePages = [
    WelcomeModel(
      image: 'assets/images/welcome-one.png',
      body:
          "Mountain hikes gives you an incredible sense of freedom along with endurance test.",
    ),
    WelcomeModel(
      image: 'assets/images/welcome-two.png',
      body:
          "Moraine Lake is yet another astonishing geographical location that you can't afford to miss out on if you're traveling along the Icefields Parkway.",
    ),
    WelcomeModel(
      image: 'assets/images/welcome-three.png',
      body:
          "The Icefields Parkway offers you the picturesque panorama of Alberta's most talked about mountain vistas.",
    ),
  ];

  void navigateDirectlyToLayout(BuildContext context) {
    navigateAndFinish(context, view: const TravelLayout());
    emit(SkipWelcomeViewSuccessState());
  }
}
