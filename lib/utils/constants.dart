import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1A87DD);
const kPrimaryLightColor = Color(0xFFD7DDE4);

const double defaultPadding = 20.0;
const double defaultmargin = 30.0;
const double defaultradius = 15.6;
const double defaultHeadingSize = 0.03;

appSize(BuildContext context, String flag) {
  switch (flag) {
    case 'w':
      return MediaQuery.of(context).size.width;
    case 'h':
      return MediaQuery.of(context).size.height;
    default:
      MediaQuery.of(context).size;
  }
}

navigate({required BuildContext context, required Widget destination}) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => destination,
      ));
}

navigatePush({required BuildContext context, required Widget destination}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => destination,
      ));
}
