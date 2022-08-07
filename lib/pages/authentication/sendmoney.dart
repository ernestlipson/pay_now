import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/add_icon.svg'),
                ),
                CustomText(
                  text: 'Send Money',
                  size: size.height * 0.035,
                  myweight: FontWeight.bold,
                ),
                Container(),
              ],
            ),
          ),
          const Divider(thickness: 1),
          Container(
            padding: const EdgeInsets.all(defaultPadding),
            margin: const EdgeInsets.all(defaultmargin),
            child: ListTile(
              title: CustomText(text: 'John Osborn'),
              subtitle: CustomTextSmall(smallText: 'JohnOsborn@gmail.com'),
              leading: CircleAvatar(),
            ),
          ),
          CustomText(text: 'Payment Amount'),
        ],
      ),
    );
  }
}
