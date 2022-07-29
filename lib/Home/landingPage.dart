import 'package:flutter/material.dart';
import 'package:pay_now/pages/transactions.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/widgets/Custom_home_page.dart';
import 'package:pay_now/widgets/btm_navigation.dart';
import 'package:provider/provider.dart';

import '../pages/contacts.dart';
import '../pages/myProfile.dart';

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: Provider.of<AppState>(context).currentButtomPage,
        children: [
          CustomHomePage(),
          Transactions(),
          Contacts(),
          MyProfilePage(),
        ],
      ),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
