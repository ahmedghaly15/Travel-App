import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/models/data_model.dart';
import 'package:travel_app/shared/constants.dart';
import 'package:travel_app/views/detail_view/cubit/cubit.dart';
import 'package:travel_app/views/detail_view/cubit/states.dart';
import 'components/details.dart';
import 'components/fav_and_book_buttons.dart';

class DetailView extends StatelessWidget {
  final DataModel details;
  const DetailView({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailViewCubit(),
      child: BlocBuilder<DetailViewCubit, DetailViewStates>(
          builder: (context, state) {
        DetailViewCubit cubit = DetailViewCubit.getObject(context);
        return Scaffold(
          body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Hero(
                    tag: details.name!,
                    child: SizedBox(
                      height: 350,
                      width: double.maxFinite,
                      child: CachedNetworkImage(
                        imageUrl:
                            "http://mark.bslmeiyu.com/uploads/${details.img}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 70,
                  child: IconButton(
                    onPressed: () => navigateBack(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  top: 320,
                  child: Details(
                    details: details,
                    cubit: cubit,
                  ),
                ),
                const Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: FavAndBookButtons(),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
