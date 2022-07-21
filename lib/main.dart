import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_now/pages/screens/splash/onboard.dart';
import 'package:pay_now/pages/screens/splashscreenhome.dart';

import 'pages/screens/account_splashscreen.dart';

void main() {
  runApp(const PayNow());
}

class PayNow extends StatelessWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'SF-Pro-Rounded',
          // textTheme: TextTheme(bodyText1: TextStyle()),
        ),
        home: const OnBoard());
  }
}
