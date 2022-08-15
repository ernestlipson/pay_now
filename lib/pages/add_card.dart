import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/pages/mycards.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/app_bar.dart';
import 'package:pay_now/widgets/myButtons/bottomButton.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Add Card', widget: Container()),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: appSize(context, 'h') * 0.035),
            inputBoxDetails(context),
            cvcDate(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        containerWidth: double.infinity,
        btnOnPressed: () {},
        buttonText: 'Submit Card',
        svgfile: '',
        buttonColor: AppColors.mainColor,
        textColor: Colors.white,
      ),
    );
  }
}
