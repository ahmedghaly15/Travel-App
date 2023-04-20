import 'package:flutter/material.dart';
import '../../shared/constants.dart';
import 'components/details.dart';
import 'components/fav_and_book_buttons.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                height: 350,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/mountain.jpeg',
                  ),
                )),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: IconButton(
                onPressed: () => navigateBack,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            const Positioned(
              top: 320,
              child: Details(),
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
  }
}
