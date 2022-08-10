import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/sendmoney.dart';
import 'package:pay_now/pages/request_money.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';

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
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  CustomText(
                    text: 'Contacts',
                    size: size.height * defaultHeadingSize,
                    myweight: FontWeight.bold,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/add_icon.svg'),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter a name',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(size.height / 51.6),
                  ),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: size.height * 0.005),
            SizedBox(
              height: size.height * 0.57,
              child: ListView.separated(
                  itemBuilder: ((context, index) => ListTile(
                        // contentPadding: const EdgeInsets.symmetric(
                        //     horizontal: defaultPadding),
                        leading: const CircleAvatar(),
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
                                navigatePush(context, SendMoney());
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.height / 60.6),
                              ),
                              minWidth: size.width * 0.05,
                              height: MediaQuery.of(context).size.height / 14,
                              elevation: 0,
                              color: AppColors.mainColorBox,
                              child: SvgPicture.asset(
                                  'assets/icons/send_icon.svg'),
                            ),
                            const SizedBox(width: 6),
                            MaterialButton(
                              onPressed: () {
                                navigatePush(context, RequestMoney());
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.height / 60.6),
                              ),
                              minWidth: size.width * 0.05,
                              height: MediaQuery.of(context).size.height / 14,
                              elevation: 0,
                              color: AppColors.mainColor,
                              child: SvgPicture.asset(
                                  'assets/icons/request_icon.svg'),
                            ),
                          ],
                        ),
                      )),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 2),
                  itemCount: 20),
            ),
          ],
        ),
      ),
    );
  }
}
