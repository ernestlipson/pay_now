import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:provider/provider.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = appSize(context, 'h');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 1.8),
      height: size * 0.103,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.roundedBoxColor,
            borderRadius: BorderRadius.circular(size / 51.6),
          ),
          padding: EdgeInsets.symmetric(
            // horizontal: size * 0.0147,
            vertical: size * 0.0147,
          ),
          height: size * 0.089,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HomeButtons(
                size: size,
                btnText: 'Home',
                asset: 'assets/icons/home_icon.svg',
                index: 0,
              ),
              HomeButtons(
                size: size,
                btnText: 'Transactions',
                asset: 'assets/icons/arrows_icon.svg',
                index: 1,
              ),
              HomeButtons(
                size: size,
                btnText: 'Contacts',
                asset: 'assets/icons/contacts_icon.svg',
                index: 2,
              ),
              HomeButtons(
                size: size,
                btnText: 'Profile',
                asset: 'assets/icons/user_icon.svg',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  final int index;
  final String asset, btnText;

  const HomeButtons({
    Key? key,
    required this.size,
    required this.index,
    required this.asset,
    required this.btnText,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<AppState>(context, listen: false)
            .setCurrentButtomPage(index);
      },
      child: Column(
        children: [
          SvgPicture.asset(asset),
          CustomText(
            text: btnText,
            size: size * 0.025,
          ),
        ],
      ),
    );
  }
}
