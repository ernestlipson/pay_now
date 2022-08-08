import 'package:flutter/material.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    final defaultDeviceHeight = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            defaultDeviceHeight.height / 51.6,
          ),
        ),
        minWidth: 350,
        height: MediaQuery.of(context).size.height / 12,
        elevation: 0,
        color: AppColors.mainColor,
        onPressed: () {},
        child: CustomText(
          text: 'Create new account',
          size: defaultDeviceHeight.height / 38.3,
          color: Colors.white,
        ),
      ),
    );
  }
}
