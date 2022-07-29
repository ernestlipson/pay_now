import 'package:get/get.dart';

class Dimensions {
  static double deviceScreenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageViewContainer = deviceScreenHeight / 3.03;
  static double pageViewTextContainer = deviceScreenHeight / 6.03;

  static double pageView = deviceScreenHeight / 3.03;
  static double pageViewText = deviceScreenHeight / 6.03;
  static double dashBorardHeight = deviceScreenHeight / 2.2;

  // borderRadiusDimension
  static double borderRadius = deviceScreenHeight / 36.6;
  // double queryBorderRadius = MediaQuery.of(c)
  static double padheight = deviceScreenHeight / 71;
  static double padheight2 = deviceScreenHeight / 35.4;
  // size of list View
  static double listViewSize = deviceScreenHeight / 7.69;
  static double listViewTextContainer = deviceScreenHeight / 7.0;

  // Margin Dimensions
  static double margin10 = deviceScreenHeight / 68.50;
  static double margin15 = deviceScreenHeight / 45.66;
  static double margin20 = deviceScreenHeight / 34.25;
  static double margin30 = deviceScreenHeight / 22.85;
  static double margin40 = deviceScreenHeight / 17.125;
}
