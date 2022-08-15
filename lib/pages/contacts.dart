import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/sendmoney.dart';
import 'package:pay_now/pages/request_money.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';

import '../widgets/customSmallText.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint('width: ${size.width}, height: ${size.height}');

    return Scaffold(
      appBar: MyAppBar(
        title: 'Contacts',
        widget: GestureDetector(
          child: Container(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: SvgPicture.asset('assets/icons/add_icon.svg'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.125,
                padding: const EdgeInsets.all(defaultPadding),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a name',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(size.height / 51.6),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: size.height * 0.005),
              SingleChildScrollView(
                child: SizedBox(
                  height: size.height * 0.67,
                  child: ListView.separated(
                      itemBuilder: ((context, index) => ListTile(
                            // contentPadding: const EdgeInsets.all(0),
                            leading: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profilepic.jpg'),
                            ),
                            title: CustomText(text: 'James Osborn'),
                            subtitle: CustomText(
                              text: 'Ahmed43Rui@gmai.com',
                              size: size.height * 0.019,
                              color: AppColors.textColor.withOpacity(0.5),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    navigatePush(
                                        context: context,
                                        destination: SendMoney());
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.height / 60.6),
                                  ),
                                  minWidth: size.width * 0.05,
                                  height:
                                      MediaQuery.of(context).size.height / 14,
                                  elevation: 0,
                                  color: AppColors.mainColorBox,
                                  child: SvgPicture.asset(
                                      'assets/icons/send_icon.svg'),
                                ),
                                const SizedBox(width: 6),
                                MaterialButton(
                                  onPressed: () {
                                    navigatePush(
                                        context: context,
                                        destination: RequestMoney());
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        size.height / 60.6),
                                  ),
                                  minWidth: size.width * 0.05,
                                  height:
                                      MediaQuery.of(context).size.height / 14,
                                  elevation: 0,
                                  color: AppColors.mainColor,
                                  child: SvgPicture.asset(
                                      'assets/icons/request_icon.svg'),
                                ),
                              ],
                            ),
                          )),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 0),
                      itemCount: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
