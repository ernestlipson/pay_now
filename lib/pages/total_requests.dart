import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';

import 'package:pay_now/widgets/myButtons/bottomButton.dart';
import 'package:pay_now/widgets/my_list_tile.dart';

class TotalRequests extends StatefulWidget {
  const TotalRequests({Key? key}) : super(key: key);

  @override
  State<TotalRequests> createState() => _TotalRequestsState();
}

class _TotalRequestsState extends State<TotalRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Requests',
        widget: Container(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(appSize(context, 'w') * 0.04),
              margin: const EdgeInsets.only(
                top: defaultmargin / 2.5,
                left: defaultPadding,
                right: defaultPadding,
              ),
              decoration: BoxDecoration(
                color: AppColors.roundedBoxColor,
                borderRadius:
                    BorderRadius.circular(defaultCircularBorderRadius(context)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Total Amount:',
                    myweight: FontWeight.bold,
                  ),
                  SizedBox(width: appSize(context, 'w') * 0.009),
                  CustomText(
                    text: '-518',
                    myweight: FontWeight.bold,
                    color: AppColors.mainColorBox,
                  ),
                ],
              ),
            ),
            SizedBox(height: appSize(context, 'w') * 0.04),
            GroupTile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        containerWidth: double.infinity,
        btnOnPressed: () {},
        buttonText: 'Send All Payment',
        svgfile: 'assets/icons/send_icon.svg',
        buttonColor: AppColors.mainColorBox,
      ),
    );
  }
}
