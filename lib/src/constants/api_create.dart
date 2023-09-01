// import 'dart:convert';
// import 'package:bank_app/src/constants/customer_data.dart';
// import 'package:flutter/services.dart';

// Future<List<CustomerStaticData>> _loadStaticData() async {
//     final jsonStr = await rootBundle.loadString('assets/data.json');
//     final jsonData = json.decode(jsonStr);
//     final staticDataList =
//         (jsonData['customerStaticData'] as List<dynamic>).map((e) {
//       return CustomerStaticData.fromJson(e as Map<String, dynamic>);
//     }).toList();
//     return staticDataList;
//   }

//   Future<List<CustomerTransactionData>> _loadTransactionData() async {
//     final jsonStr = await rootBundle.loadString('assets/data.json');
//     final jsonData = json.decode(jsonStr);
//     final transactionDataList =
//         (jsonData['customerTransactionData'] as List<dynamic>).map((e) {
//       return CustomerTransactionData.fromJson(e as Map<String, dynamic>);
//     }).toList();
//     return transactionDataList;
//   }