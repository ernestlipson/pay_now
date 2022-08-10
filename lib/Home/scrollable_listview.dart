import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/Home/my_home_page.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/btm_navigation.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                    text: 'Recent Transactions',
                    size: appSize(context, 'h') * 0.035,
                    myweight: FontWeight.bold,
                  ),
                  Container(),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: SizedBox(
                height: appSize(context, 'h') / 1.3,
                child: Expanded(
                  child: ListView.separated(
                      itemBuilder: ((context, index) => PageBuilder()),
                      separatorBuilder: (context, index) => SizedBox(height: 5),
                      itemCount: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
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
      trailing: CustomText(text: '-50.00', myweight: FontWeight.bold),
    );
  }
}

// Widget _pageBuilder(int index) {
//   return const ListView.custom(
//     childrenDelegate: SliverChildBuilderDelegate(builder),
//   );
// }
