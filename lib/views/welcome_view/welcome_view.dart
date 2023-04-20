import 'package:flutter/material.dart';
import 'package:travel_app/shared/constants/colors.dart';
import 'package:travel_app/views/welcome_view/components/description_text.dart';
import 'package:travel_app/views/welcome_view/components/responsive_custom_button.dart';
import 'package:travel_app/views/welcome_view/components/title_text.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final List<String> images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  final List<String> descriptionText = [
    "Mountain hikes gives you an incredible sense of freedom along with endurance test.",
    "Moraine Lake is yet another astonishing geographical location that you can't afford to miss out on if you're traveling along the Icefields Parkway.",
    "The Icefields Parkway offers you the picturesque panorama of Alberta's most talked about mountain vistas.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${images[index]}'),
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
                      const TitleText(text: "Trips"),
                      const DescriptionText(text: "Mountain", size: 30),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: DescriptionText(
                          text: descriptionText[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveCustomButton(
                        width: 120,
                        onTap: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(images.length, (dotsIndex) {
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
      ),
    );
  }
}
