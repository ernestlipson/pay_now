import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/customSmallText.dart';

import 'CustomText.dart';

class GroupTile extends StatelessWidget {
  const GroupTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: appSize(context, 'h') * 0.626,
      child: ListView.builder(
        itemCount: 12, //Number of months with reference to available data set
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("October 2020"),
              Column(
                children: List.generate(
                  5,
                  (index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profilepic.jpg'),
                      ),
                      title: CustomText(
                        text: 'Ahmed Ibrahum',
                        size: appSize(context, 'w') * 0.052,
                      ),
                      subtitle: CustomTextSmall(
                        smallText: '-10.50',
                        smallSize: appSize(context, 'w') * 0.044,
                        smallColor: Colors.black.withOpacity(0.5),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(defaultPadding / 1.4),
                          decoration: BoxDecoration(
                            color: AppColors.mainColorBox,
                            borderRadius: BorderRadius.circular(
                              appSize(context, 'h') / 51.6,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset('assets/icons/send_icon.svg'),
                              CustomText(
                                  text: 'Send',
                                  size: appSize(context, 'w') * 0.05),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
