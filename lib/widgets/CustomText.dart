import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight? myweight;
  TextOverflow? overFlow;
  CustomText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overFlow,
    this.size = 20.0,
    this.myweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontFamily: 'SF Pro Rounded',
        fontWeight: myweight,
        fontSize: size,
      ),
    );
  }
}
