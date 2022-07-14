import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pay_now/widgets/buttons_widget.dart';

import '../utils/colors.dart';
import 'dashboard.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const Dashboard(),
      body:
          //TODO: Custom ListView, Scrollable
          Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          ButtonsWidget(
            size: 20,
            icon: Icons.send,
            text: 'Send Money',
            color: AppColors.mainColorBox,
          )
          //TODO: Custom Widgets
        ],
      ),
    );
  }
}
