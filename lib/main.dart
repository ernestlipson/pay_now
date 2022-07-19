import 'package:flutter/material.dart';
import 'package:pay_now/pages/myProfile.dart';
import 'package:pay_now/pages/settings.dart';

void main() {
  runApp(const PayNow());
}

class PayNow extends StatelessWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyProfilePage());
    // const MyHomePage());
  }
}
