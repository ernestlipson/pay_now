import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/pages/authentication/sendmoney.dart';
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

    return Scaffold(
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
                    size: size.height * 0.035,
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
            const SizedBox(height: defaultPadding),
            SizedBox(
              height: size.height * 0.56,
              child: ListView.separated(
                  itemBuilder: ((context, index) => ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        leading: const CircleAvatar(
                            // backgroundImage: ExactAssetImage(
                            //     'assets/images/avatars/christopher.jpg'),
                            // minRadius: 30,
                            // maxRadius: 50,
                            ),
                        title: CustomText(text: 'James Osborn'),
                        subtitle: CustomText(
                          text: 'Ahmed43Rui@gmai.com',
                          size: 15,
                          color: AppColors.textColor.withOpacity(0.5),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                //             Navigator.pushReplacement(context,
                                // MaterialPageRoute(builder: (context) => MyLandingPage()));
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SendMoney(),
                                  ),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.height / 60.6),
                              ),
                              minWidth: 50,
                              height: MediaQuery.of(context).size.height / 12,
                              elevation: 0,
                              color: AppColors.mainColorBox,
                              child: SvgPicture.asset(
                                  'assets/icons/send_icon.svg'),
                            ),
                            const SizedBox(width: 6),
                            MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.height / 60.6),
                              ),
                              minWidth: 50,
                              height: MediaQuery.of(context).size.height / 12,
                              elevation: 0,
                              color: AppColors.mainColor,
                              child: SvgPicture.asset(
                                  'assets/icons/request_icon.svg'),
                            ),
                          ],
                        ),
                      )),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 5),
                  itemCount: 15),
            ),
          ],
        ),
      ),
    );
  }
}
