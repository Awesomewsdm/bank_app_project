import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/path_to_json.dart';
import 'package:bank_app/src/constants/text.dart';
import 'package:flutter/services.dart';


Future<List<CustomerTransactionData>> loadTransactionData(String filter) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? cachedData = prefs.getString('cachedTransactionData$filter');

  if (cachedData != null) {
    final List<dynamic> cachedList = json.decode(cachedData);
    final List<CustomerTransactionData> cachedTransactionDataList =
        cachedList.map((e) {
      return CustomerTransactionData.fromJson(e as Map<String, dynamic>);
    }).toList();

    return cachedTransactionDataList;
  }

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

  // Cache the fetched transaction data in SharedPreferences
  prefs.setString('cachedTransactionData$filter', json.encode(transactionDataList));

  return transactionDataList;
}
