import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/customSmallText.dart';
import 'package:provider/provider.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    debugPrint('width is ${size.width}');
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
                    text: 'Transactions',
                    size: size.height * defaultHeadingSize,
                    myweight: FontWeight.bold,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/search_icon.svg'),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
            Container(
              padding: EdgeInsets.all(size.height * 0.009),
              margin: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                  color: AppColors.roundedBoxColor,
                  borderRadius: BorderRadius.circular(size.height / 36.5)),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.read<AppState>().setTransactionIndex(0);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          size.height / 51.6,
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 13.5,
                      color: context.watch<AppState>().transactionIndex == 0
                          ? AppColors.mainColorBox
                          : AppColors.roundedBoxColor,
                      elevation: 0,
                      // color: AppColors.mainColorBox,
                      child: CustomText(
                        text: 'Incomes',
                        size: size.height / 38.3,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.read<AppState>().setTransactionIndex(1);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          size.height / 51.6,
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 13.5,
                      elevation: 0,
                      color: context.watch<AppState>().transactionIndex == 1
                          ? AppColors.mainColorBox
                          : AppColors.roundedBoxColor,
                      child: CustomText(
                        text: 'Expenses',
                        size: size.height / 38.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: appSize(context, 'h') / 1.75,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextSmall(smallText: 'September,2022'),
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            separatorBuilder:
                                (BuildContext context, int index) {
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
                                  text: 'Oct 14, 10:24',
                                  size: 15,
                                  color: AppColors.textColor.withOpacity(0.5),
                                ),
                                trailing: CustomText(text: '-50.00'),
                              );
                            },
                          ),
                        ],
                      )),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: size.height * 0.1),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}
