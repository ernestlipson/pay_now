import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';

class ButtonsWidget extends StatelessWidget {
  final String text;
  Color? textColor = AppColors.textColor;
  Color? iconColor = AppColors.textColor;
  final Color? color;
  final String svgfile;
  final double? size;
  void onPressed() {}

  ButtonsWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.svgfile,
    this.size,
    this.textColor,
    this.iconColor,
    // required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          size.height / 51.6,
        ),
      ),
      height: size.height * 0.08,
      minWidth: size.width * 0.2,
      elevation: 0.2,
      onPressed: onPressed,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgfile,
            color: iconColor,
          ),
          // const SizedBox(width: 1),
          Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
