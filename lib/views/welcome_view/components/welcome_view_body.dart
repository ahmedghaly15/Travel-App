import 'package:flutter/material.dart';
import 'package:travel_app/views/welcome_view/components/responsive_custom_button.dart';
import 'package:travel_app/views/welcome_view/components/title_text.dart';

import '../../../models/welcome_model.dart';
import '../../../shared/colors.dart';
import '../cubit/cubit.dart';
import 'description_text.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({
    super.key,
    required this.welcomeViewController,
    required this.welcomePages,
    required this.cubit,
  });

  final PageController welcomeViewController;
  final List<WelcomeModel> welcomePages;
  final WelcomeViewCubit cubit;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: welcomeViewController,
      itemCount: welcomePages.length,
      itemBuilder: (_, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(welcomePages[index].image!),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 150,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TitleText(text: welcomePages[index].title!),
                    DescriptionText(
                        text: welcomePages[index].description!, size: 30),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 250,
                      child: DescriptionText(
                        text: welcomePages[index].body!,
                        color: AppColors.textColor2,
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ResponsiveCustomButton(
                      width: 120,
                      onTap: () => cubit.navigateDirectlyToMainView(context),
                    ),
                  ],
                ),
                Column(
                  children: List.generate(welcomePages.length, (dotsIndex) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index == dotsIndex ? 30 : 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == dotsIndex
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.3),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
