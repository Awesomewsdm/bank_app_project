import 'dart:convert';
import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/path_to_json.dart';
import 'package:flutter/services.dart';

Future<List<CustomerStaticData>> loadCustomerStaticData() async {
  final jsonStr = await rootBundle.loadString(pathToJson);
  final jsonData = json.decode(jsonStr);
  final List<dynamic> rawDataList = jsonData['customerStaticData'];

  final List<CustomerStaticData> customerStaticDataList = rawDataList.map((e) {
    return CustomerStaticData.fromJson(e as Map<String, dynamic>);
  }).toList();

  return customerStaticDataList;
}
