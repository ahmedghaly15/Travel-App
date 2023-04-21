import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/views/welcome_view/cubit/cubit.dart';
import 'package:travel_app/views/welcome_view/cubit/states.dart';

import 'components/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeViewCubit(),
      child: BlocConsumer<WelcomeViewCubit, WelcomeViewStates>(
        listener: (context, state) {},
        builder: (context, state) {
          WelcomeViewCubit cubit = WelcomeViewCubit.getObject(context);
          return Scaffold(
            body: WelcomeViewBody(
              welcomeViewController: cubit.welcomeViewController,
              welcomePages: cubit.welcomePages,
              cubit: cubit,
            ),
          );
        },
      ),
    );
  }
}
