import 'package:flutter/material.dart';

import '../../../shared/colors.dart';
import '../../../shared/components/custom_button.dart';
import '../../../shared/components/description_text.dart';
import '../../../shared/components/title_text.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TitleText(
                text: "Yosemite",
                color: Colors.black.withOpacity(0.8),
              ),
              const TitleText(
                text: "\$ 250",
                color: AppColors.mainColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const <Widget>[
              Icon(
                Icons.location_on,
                color: AppColors.mainColor,
              ),
              SizedBox(width: 5),
              DescriptionText(
                text: "USA, California",
                color: AppColors.textColor1,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Wrap(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: index < gottenStars
                        ? AppColors.starColor
                        : AppColors.textColor2,
                  );
                }),
              ),
              const SizedBox(width: 10),
              const DescriptionText(
                text: "(4.0)",
                color: AppColors.textColor2,
              ),
            ],
          ),
          const SizedBox(height: 25),
          TitleText(
            text: "People",
            size: 23,
            color: Colors.black.withOpacity(0.8),
          ),
          const SizedBox(height: 5),
          const DescriptionText(
            text: "Number of people in your group",
            color: AppColors.mainTextColor,
          ),
          const SizedBox(height: 10),
          Wrap(
            children: List.generate(
              5,
              (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: CustomButton(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    backgroundColor: selectedIndex == index
                        ? Colors.black.withOpacity(0.8)
                        : AppColors.buttonBackground,
                    size: 50,
                    borderColor: selectedIndex == index
                        ? Colors.black.withOpacity(0.8)
                        : AppColors.buttonBackground,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 25),
          TitleText(
            text: "Description",
            size: 23,
            color: Colors.black.withOpacity(0.8),
          ),
          const SizedBox(height: 10),
          const DescriptionText(
            text:
                "You must go for a travel. Travelling helps get rid of pressure. Got to mountains to see the nature",
            color: AppColors.mainTextColor,
          ),
        ],
      ),
    );
  }
}
