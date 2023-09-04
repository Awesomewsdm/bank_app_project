import 'package:bank_app/src/common_widgets/transaction_screen/transaction_list.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';

Widget buildTransactionsPage() {
  return Column(
    children: [
      Container(
        width: double.infinity,
        color: tTranscationHeaderColor,
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Transactions",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: tPrimaryColor,
          ),
        ),
      ),
      Expanded(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Material(
                color: tTranscationHeaderColor,
                child: TabBar(
                  overlayColor:
                      MaterialStateProperty.all(tTranscationHeaderColor),
                  labelStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                  indicatorColor: tPrimaryColor,
                  labelColor: tPrimaryColor,
                  tabs: const [
                    Tab(text: tAll),
                    Tab(text: tDebit),
                    Tab(text: tCredit),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    buildTransactionList(tAll),
                    buildTransactionList(tDebit),
                    buildTransactionList(tCredit),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
