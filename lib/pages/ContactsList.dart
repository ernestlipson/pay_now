import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/widgets/CustomText.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
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
              text: 'osborn2er@gmail.com',
              size: 15,
              color: AppColors.textColor.withOpacity(0.5),
            ),
            trailing: Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(size.height / 60.6),
                  ),
                  minWidth: 50,
                  height: MediaQuery.of(context).size.height / 12,
                  elevation: 0,
                  color: AppColors.mainColorBox,
                  child: SvgPicture.asset('assets/icons/send_icon.svg'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
