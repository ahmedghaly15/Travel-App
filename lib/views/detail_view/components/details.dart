import 'package:flutter/material.dart';
import 'package:travel_app/models/data_model.dart';
import 'package:travel_app/views/detail_view/cubit/cubit.dart';

import '../../../shared/colors.dart';
import '../../../shared/components/custom_button.dart';
import '../../../shared/components/description_text.dart';
import '../../../shared/components/title_text.dart';

class Details extends StatelessWidget {
  final DataModel details;
  final DetailViewCubit cubit;
  const Details({
    super.key,
    required this.details,
    required this.cubit,
  });
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
                text: details.name!,
                color: Colors.black.withOpacity(0.8),
              ),
              TitleText(
                text: "\$ ${details.price}",
                color: AppColors.mainColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              const Icon(
                Icons.location_on,
                color: AppColors.mainColor,
              ),
              const SizedBox(width: 5),
              DescriptionText(
                text: details.location!,
                color: AppColors.textColor1,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Wrap(
                children: List.generate(
                  details.stars!,
                  (index) {
                    return Icon(
                      Icons.star,
                      color: index < details.stars!
                          ? AppColors.starColor
                          : AppColors.textColor2,
                    );
                  },
                ),
              ),
              const SizedBox(width: 10),
              DescriptionText(
                text: "(${details.stars}.0)",
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
              details.people!,
              (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: CustomButton(
                    onTap: () => cubit.changeNPeopleSelected(index),
                    backgroundColor: cubit.nPeopleSelected == index
                        ? Colors.black.withOpacity(0.8)
                        : AppColors.buttonBackground,
                    size: 50,
                    borderColor: cubit.nPeopleSelected == index
                        ? Colors.black.withOpacity(0.8)
                        : AppColors.buttonBackground,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: cubit.nPeopleSelected == index
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
          DescriptionText(
            text: details.description!,
            color: AppColors.mainTextColor,
          ),
        ],
      ),
    );
  }
}
