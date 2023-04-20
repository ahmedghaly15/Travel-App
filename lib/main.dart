import 'package:flutter/material.dart';
import 'package:travel_app/views/welcome_view/welcome_view.dart';

void main() => runApp(const TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeView(),
    );
  }
}
