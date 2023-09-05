import 'dart:convert';

import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/path_to_json.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/services.dart';

Future<List<CustomerTransactionData>> loadTransactionData(String filter) async {
  final jsonStr = await rootBundle.loadString(pathToJson);
  final jsonData = json.decode(jsonStr);
  final List<dynamic> rawDataList = jsonData['customerTransactionData'];

  final List<CustomerTransactionData> transactionDataList =
      rawDataList.where((transaction) {
    final String transactionDirection = transaction['transactionDirection'];
    if (filter == tAll) {
      return true;
    } else if (filter == tDebit) {
      return transactionDirection == tDebit;
    } else if (filter == tCredit) {
      return transactionDirection == tCredit;
    }
    return false;
  }).map((e) {
    return CustomerTransactionData.fromJson(e as Map<String, dynamic>);
  }).toList();

  return transactionDataList;
}
