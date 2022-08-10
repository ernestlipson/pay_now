import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay_now/pages/screens/splash/onboard.dart';
import 'package:pay_now/pages/screens/splash/splashscreenhome.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:provider/provider.dart';

import 'pages/authentication/loginPage.dart';
import 'pages/screens/splash/account_splashscreen.dart';

// late Size appBarSize;

void main() {
  runApp(const PayNow());
}

class PayNow extends StatelessWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // appBarSize = MediaQuery.of(context).size;
    debugPrint("${window.physicalSize.height}");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => appState),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'SF-Pro-Rounded',
            // textTheme: TextTheme(bodyText1: TextStyle()),
          ),
          home: const MyLogin()),
    );
  }
}
