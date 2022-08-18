import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: MyAppBar(
        title: 'Recent Transactions',
        widget: Container(),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment(-0.5, 0.5),
          children: [
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: SizedBox(
                    height: appSize(context, 'h') * 0.875,
                    child: ListView.separated(
                      itemBuilder: ((context, index) => PageBuilder()),
                      separatorBuilder: (context, index) => SizedBox(height: 5),
                      itemCount: 30,
                    ),
                  ),
                ),
              ],
            ),
            AnimSearchBar(
                width: 500,
                textController: textController,
                onSuffixTap: () {
                  setState(() {
                    textController.clear();
                  });
                }),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
              shape: CircleBorder(),
              child: SvgPicture.asset(
                'assets/icons/send_icon.svg',
                color: AppColors.mainColorBox,
              ),
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
