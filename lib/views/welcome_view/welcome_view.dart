import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/welcome_model.dart';
import 'package:travel_app/views/welcome_view/cubit/cubit.dart';
import 'package:travel_app/views/welcome_view/cubit/states.dart';

import 'components/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
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

    return BlocProvider(
      create: (context) => WelcomeViewCubit(),
      child: BlocConsumer<WelcomeViewCubit, WelcomeViewStates>(
        listener: (context, state) {},
        builder: (context, state) {
          WelcomeViewCubit cubit = WelcomeViewCubit.getObject(context);
          return Scaffold(
            body: WelcomeViewBody(
              welcomeViewController: welcomeViewController,
              welcomePages: welcomePages,
              cubit: cubit,
            ),
          );
        },
      ),
    );
  }
}
