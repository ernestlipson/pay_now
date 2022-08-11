import 'package:flutter/material.dart';
import 'package:pay_now/pages/screens/splash/create_account_splashscreen.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.defaultDeviceSize,
    required this.btnText,
    required this.btnPress,
  }) : super(key: key);

  final Size defaultDeviceSize;
  final String btnText;
  final VoidCallback btnPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          defaultDeviceSize.height / 51.6,
        ),
      ),
      height: MediaQuery.of(context).size.height / 13.5,
      minWidth: double.infinity,
      elevation: 0,
      color: AppColors.mainColor,
      onPressed: btnPress,
      child: CustomText(
        text: btnText,
        size: defaultDeviceSize.height / 38.3,
        color: Colors.white,
      ),
    );
  }
}
