import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_now/utils/assets_images.dart';
import 'package:pay_now/utils/colors.dart';

class Dashboard extends StatelessWidget implements PreferredSizeWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(300);
  // TODO: implement media queries
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        left: 30,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontFamily: 'SF Pro Rounded',
                  color: AppColors.roundedBoxColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  MyAssetImg.profilepic,
                ),
                // backgroundColor: Colors.amberAccent,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Hi, Amanda!',
            style: TextStyle(
              fontFamily: 'SF Pro Rounded',
              color: AppColors.roundedBoxColor.withOpacity(0.5),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Total Balance',
            style: TextStyle(
              fontFamily: 'SF Pro Rounded',
              color: AppColors.roundedBoxColor,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$124.57',
                style: TextStyle(
                  fontFamily: 'SF Pro Rounded',
                  color: AppColors.roundedBoxColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.notifications,
                color: AppColors.roundedBoxColor,
              ),
            ],
          ),
        ],
      ),
      height: 300,
      color: AppColors.mainColor,
    );
  }
}
