import 'package:bank_app/src/common_widgets/transaction_details.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/material.dart';

void showTransactionBottomSheet(
    context,
    String tTransactionDateInfo,
    String tTransactionNarrationInfo,
    String tTransactionsDirectionInfo,
    String tBalanceBeforeInfo,
    String tBalanceAfterInfo) {
  showModalBottomSheet(
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(),
        height: 800,
        child: Column(
          children: [
            const SizedBox(
              width: 40,
              child: Divider(
                thickness: 5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Transaction Details'),
            const SizedBox(
              height: 20,
            ),
            TransactionDetail(title: tBalanceBefore, info: tBalanceBeforeInfo),
            TransactionDetail(title: tBalanceAfter, info: tBalanceAfterInfo),
            const Divider(),
            TransactionDetail(
                title: tTransactionTitle, info: tTransactionDateInfo),
            TransactionDetail(
                title: tTransactionsDirection,
                info: tTransactionsDirectionInfo),
            TransactionDetail(
                title: tTransactionsNarration, info: tTransactionNarrationInfo),
            const Divider()
          ],
        ),
      );
    },
  );
}
