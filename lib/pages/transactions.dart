import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay_now/state/appstate.dart';
import 'package:pay_now/utils/colors.dart';
import 'package:pay_now/utils/constants.dart';
import 'package:pay_now/widgets/CustomText.dart';
import 'package:pay_now/widgets/app_bar.dart';
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
      appBar: MyAppBar(
        title: 'Transactions',
        widget: Container(
          padding: EdgeInsets.only(right: defaultPadding),
          child: SvgPicture.asset('assets/icons/search_icon.svg'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
            context.read<AppState>().transactionIndex == 1
                ? TransactionList(transaction: '-50.60')
                : TransactionList(transaction: '+50.40'),
          ],
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  final String transaction;
  const TransactionList({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      height: appSize(context, 'h') * 0.6209,
      child: ListView.builder(
        // padding: const EdgeInsets.all(10),
        itemCount: 20, //Number of months with reference to available data set
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("October 2020"),
              Column(
                children: List.generate(
                  5,
                  (index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profilepic.jpg'),
                      ),
                      title: CustomText(
                          text: 'Ahmed Ibrahum',
                          size: appSize(context, 'w') * 0.055),
                      subtitle: CustomText(
                        text: 'Oct 19, 5:45AM',
                        size: 15,
                        color: AppColors.textColor.withOpacity(0.5),
                      ),
                      trailing: CustomText(
                        text: transaction,
                        myweight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
