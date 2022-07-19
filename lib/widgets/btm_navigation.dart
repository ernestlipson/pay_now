import 'package:flutter/material.dart';
import 'package:pay_now/utils/colors.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 90,
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
                  debugPrint('Click ok');
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                    ),
                    Text(
                      'Home',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: const [
                    Icon(
                      Icons.transfer_within_a_station_rounded,
                    ),
                    Text(
                      'Transactions',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: const [
                    Icon(
                      Icons.group,
                    ),
                    Text(
                      'Contacts',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: const [
                    Icon(
                      Icons.person,
                    ),
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
