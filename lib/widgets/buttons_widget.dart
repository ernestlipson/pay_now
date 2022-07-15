import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_now/utils/colors.dart';

class ButtonsWidget extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final double? size;

  const ButtonsWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 60,
      minWidth: 100,
      elevation: 0.5,
      onPressed: () {},
      color: color,
      child: Center(
        child: Row(children: [
          Icon(
            icon,
            color: AppColors.textColor,
            size: size,
          ),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
            ),
          )
        ]),
      ),
    );
  }
}
