import 'package:flutter/material.dart';
import 'package:pay_now/utils/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: defaultmargin),
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/673-6737233_chungha-png.png',
                width: size.height * 0.9,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
