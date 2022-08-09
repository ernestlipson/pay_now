import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1A87DD);
const kPrimaryLightColor = Color(0xFFD7DDE4);

const double defaultPadding = 18.0;
const double defaultmargin = 20.0;
const double defaultradius = 15.6;

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
