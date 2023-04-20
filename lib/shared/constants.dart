//================== For Navigating To A Screen & Remove All The Previous Screens ==================
import 'package:flutter/material.dart';

void navigateAndFinish(context, {required Widget view}) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => view),
    (Route<dynamic> route) => false, // remove all previous routes
  );
}
