import 'package:flutter/material.dart';
import 'package:pay_now/widgets/buttons_widget.dart';

import '../utils/colors.dart';
import 'btm_navigation.dart';
import 'dashboard.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const Dashboard(),
      body:
          //TODO: Custom ListView, Scrollable
          Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: size.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ButtonsWidget(
                size: 20,
                icon: Icons.send,
                text: 'Send Money',
                color: AppColors.mainColorBox,
              ),
              SizedBox(
                width: 30,
              ),
              ButtonsWidget(
                size: 20,
                icon: Icons.send,
                text: 'Send Money',
                color: AppColors.mainColor,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              //TODO: Transactions and ViewAll
              Text('Transactions'),
              Text('View All'),
            ],
          ),
          // const MyListView(),

          //TODO: Custom Widgets
        ],
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
