import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              height: 380,
              child: ListView.separated(
                  itemBuilder: ((context, index) => ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: CircleAvatar(),
                        title: CustomText(text: 'James Osborn'),
                        subtitle: CustomText(
                          text: 'Ahmed43Rui@gmai.com',
                          size: 15,
                          color: AppColors.textColor.withOpacity(0.5),
                        ),
                      )),
                  separatorBuilder: (context, index) => SizedBox(height: 5),
                  itemCount: 15),
            ),
          ],
        ),
      ),
    );
  }
}
