import 'package:flutter/material.dart';

import '../../../../layout/cubit/cubit.dart';
import '../../../../models/data_model.dart';
import '../../../../shared/constants.dart';
import '../../../detail_view/detail_view.dart';

class PlacesTabContent extends StatelessWidget {
  const PlacesTabContent({
    super.key,
    required this.info,
  });

  final List<DataModel> info;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: info.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigateTo(
                context: context,
                view: DetailView(
                    details: TravelAppCubit.getObject(context).places[index]));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 15, right: 8),
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "http://mark.bslmeiyu.com/uploads/${info[index].img}",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
