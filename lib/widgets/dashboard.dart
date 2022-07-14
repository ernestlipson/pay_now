import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_now/utils/colors.dart';

class Dashboard extends StatelessWidget implements PreferredSizeWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(300);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Dashboard',
        style: TextStyle(
          color: AppColors.roundedBoxColor,
          fontSize: 50,
        ),
      ),
      height: 300,
      color: AppColors.mainColor,
    );
  }
}
