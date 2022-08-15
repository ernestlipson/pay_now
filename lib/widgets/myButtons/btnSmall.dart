import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/constants.dart';

class SmallButton extends StatelessWidget {
  final Widget widget;
  final Color color;
  final VoidCallback btnTap;

  const SmallButton({
    Key? key,
    required this.widget,
    required this.color,
    required this.btnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = appSize(context, 'h');

    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          height / 51.6,
        ),
      ),
      minWidth: double.infinity,
      height: MediaQuery.of(context).size.height / 13.5,
      elevation: 0,
      color: color,
      onPressed: btnTap,
      child: widget,
    );
  }
}
