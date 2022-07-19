import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, position) {
              return _pageBuilder(position);
            }));
  }
}

Widget _pageBuilder(int index) {
  return const ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.green,
    ),
  );
}
