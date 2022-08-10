import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/main.dart';
import 'package:pay_now/utils/assets_images.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:get/get.dart';
import 'package:pay_now/utils/dimensions.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import '../widgets/buttons_widget.dart';

class Dashboard extends StatelessWidget implements PreferredSizeWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(250);
  // TODO: implement media queries
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height / 26),
      padding: EdgeInsets.only(
        left: defaultPadding,
        right: defaultPadding,
      ),
      height: size.height / 2.652,
      color: AppColors.mainColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Dashboard',
                color: Colors.white,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  MyAssetImg.profilepic,
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomTextSmall(
            smallText: 'Hi, Amanda!',
            smallColor: Colors.white.withOpacity(0.4),
          ),
          SizedBox(height: size.height * 0.015),
          CustomText(
            text: 'Total Balance',
            color: Colors.white,
            size: size.height * 0.025,
          ),
          SizedBox(height: size.height * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: '124.57',
                color: Colors.white,
                myweight: FontWeight.bold,
                size: size.height * 0.05,
              ),
              SvgPicture.asset('assets/icons/notifications _icon.svg')
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
