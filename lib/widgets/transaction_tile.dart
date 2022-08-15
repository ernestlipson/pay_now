import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import 'CustomText.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: appSize(context, 'h') / 1.75,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextSmall(smallText: 'September,2022'),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Stack(
                          children: [
                            CircleAvatar(),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Material(
                                color: Colors.white,
                                child: SvgPicture.asset(
                                  'assets/icons/send_icon.svg',
                                  color: AppColors.mainColorBox,
                                ),
                                shape: CircleBorder(),
                              ),
                            )
                          ],
                        ),
                        title: CustomText(text: 'James Osborn'),
                        subtitle: CustomText(
                          text: 'Oct 14, 10:24',
                          size: 15,
                          color: AppColors.textColor.withOpacity(0.5),
                        ),
                        trailing: CustomText(text: '-50.00'),
                      );
                    },
                  ),
                ],
              )),
          separatorBuilder: (context, index) =>
              SizedBox(height: appSize(context, 'h') * 0.1),
          itemCount: 10),
    );
  }
}
