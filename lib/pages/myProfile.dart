import 'package:flutter/material.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/btm_navigation.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(
        'The current height of device ${MediaQuery.of(context).size.height}');
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              height: size.height / 2.5,
              color: Color(0xfff3f4f5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      CustomText(text: 'My Profile', myweight: FontWeight.bold),
                      Icon(Icons.edit),
                    ],
                  ),
                  SizedBox(height: 40),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CustomText(
                        text: 'H', size: 70, myweight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  CustomText(text: 'Hisham Zayadin'),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                onTap: () {},
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                leading: Icon(Icons.person),
                title: CustomText(text: 'My Info'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color(0xfff3f4f5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                onTap: () {},
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                leading: Icon(Icons.card_membership_sharp),
                title: CustomText(text: 'My Cards'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color(0xfff3f4f5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                onTap: () {},
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                leading: Icon(Icons.settings),
                title: CustomText(text: 'Settings'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color(0xfff3f4f5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                onTap: () {},
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                leading: Icon(Icons.help),
                title: CustomText(text: 'Help Center'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color(0xfff3f4f5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
