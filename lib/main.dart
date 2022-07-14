import 'package:flutter/material.dart';

import 'Home/my_home_page.dart';

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
        home: const MyHomePage());
  }
}
