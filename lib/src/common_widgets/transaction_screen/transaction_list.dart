import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/common_widgets/bottom_sheet.dart';
import 'package:bank_app/src/common_widgets/transaction_card_widget.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/image_strings.dart';
import 'package:bank_app/src/constants/sizes.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:bank_app/src/service/customer_transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

final decimalFormatter = NumberFormat('#,##0.00');

final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

Widget buildTransactionList(String filter) {
  return SizedBox(
    height: double.infinity,
    child: FutureBuilder<List<CustomerTransactionData>>(
      future: loadTransactionData(filter),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return const Text('Error loading transaction data');
        } else if (snapshot.hasData) {
          final transactionDataList = snapshot.data!;

          return 
          ListView.builder(
            key: listKey,
            itemCount: transactionDataList.length,
            itemBuilder: (context, index) {
              final transactionData = transactionDataList[index];
              final String transactionAmount =
                  decimalFormatter.format(transactionData.transactionAmount);
              return 
              // SlideTransition(
              //   position: Tween<Offset>(
              //     begin: const Offset(1.0, 0.0),
              //     end: const Offset(1.0, 0.0),
              //   ).animate(animation),
              //   child: 
                TransactionCard(
                  onTap: () {
                    showTransactionBottomSheet(
                      context,
                      transactionData.transactionDate,
                      transactionData.transactionNarration,
                      transactionData.transactionDirection,
                      "GHC 0.00",
                      transactionAmount,
                    );
                  },
                  icon: transactionData.transactionDirection == tCredit
                      ? tMoneySendIcon
                      : tMoneyReceiveIcon,
                  transactionAmount: transactionAmount,
                  transactionNarration: transactionData.transactionNarration,
                  transactionDate: transactionData.transactionDate,
                  transactionDirection: transactionData.transactionDirection,
                  iconBgColor: transactionData.transactionDirection == tCredit
                      ? backgroundColor2
                      : backgroundColor1,
                  majorGradientColor:
                      transactionData.transactionDirection == tCredit
                          ? tPrimaryColor
                          : tSecondaryColor,
                  minorGradientColor:
                      transactionData.transactionDirection == tCredit
                          ? tGradientColor1
                          : tGradientColor2,
                );
              
            },
          );
        } else {
          return const Text('No data available');
        }
      },
    ),
  );
}

Widget buildBottomNavigationBar(
    pageController, BuildContext context, NavigationState state) {
  return Container(
    color: tWhiteColor,
    height: bottomNavigatorHeight,
    child: Row(
      children: [
        Expanded(
          child: BottomNavShape(
            label: tBottomNavLabel1,
            onTap: () {
              context
                  .read<NavigationBloc>()
                  .add(const NavigationTabSelected(0));
              pageController.jumpToPage(0);
            },
            buttonIcon: tHomeIcon,
            navBgColor1: state.backgroundColor,
            navBgColor2: state.backgroundColor,
            
            iconColor: state.iconColor, textColor: state.textColor,
          ),
        ),
        Expanded(
          child: BottomNavShape(
            label: tBottomNavLabel2,
            onTap: () {
              context
                  .read<NavigationBloc>()
                  .add(const NavigationTabSelected(1));
              pageController.jumpToPage(1);
            },
            buttonIcon: tTransactionIcon,
            navBgColor1: state.backgroundColor,
            navBgColor2: state.backgroundColor,
            iconColor: state.iconColor, textColor: state.textColor,
          ),
        )
      ],
    ),
  );
}
