import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: size.height / 2.5,
              color: Color(0xfff3f4f5),
              //TODO: Column here
            ),
            SizedBox(height: 40),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                onTap: () {},
                contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                leading: Icon(Icons.person),
                title: Text('My Info'),
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
                contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                leading: Icon(Icons.person),
                title: Text('My Info'),
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
                contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                leading: Icon(Icons.person),
                title: Text('My Info'),
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
                contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                leading: Icon(Icons.person),
                title: Text('My Info'),
                trailing: Icon(Icons.arrow_forward_ios),
                tileColor: Color(0xfff3f4f5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
