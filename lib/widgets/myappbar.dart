import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import 'CustomText.dart';

class FAppBar extends StatelessWidget {
  const FAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/icons/back_icon.svg'),
            ),
            CustomText(
              text: 'Add Card',
              size: headingSize(context),
              myweight: FontWeight.bold,
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
