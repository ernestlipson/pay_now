import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:provider/provider.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 80,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.roundedBoxColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          padding: const EdgeInsets.only(
            top: 10,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<AppState>(context, listen: false)
                      .setCurrentButtomPage(0);
                },
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/home_icon.svg'),
                    Text(
                      'Home',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<AppState>(context, listen: false)
                      .setCurrentButtomPage(1);
                },
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/arrows_icon.svg'),
                    Text(
                      'Transactions',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<AppState>(context, listen: false)
                      .setCurrentButtomPage(2);
                },
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/contacts_icon.svg'),
                    Text(
                      'Contacts',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<AppState>(context, listen: false)
                      .setCurrentButtomPage(3);
                },
                child: Column(
                  children: [
                    SvgPicture.asset('assets/icons/user_icon.svg'),
                    Text(
                      'Profile',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
