import 'dart:convert';
import 'package:bank_app/src/constants/customer_data.dart';
import 'package:bank_app/src/constants/path_to_json.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


// Future<List<CustomerStaticData>> loadCustomerStaticData() async {
//   final jsonStr = await rootBundle.loadString(pathToJson);
//   final jsonData = json.decode(jsonStr);
//   final List<dynamic> rawDataList = jsonData['customerStaticData'];

//   final List<CustomerStaticData> customerStaticDataList = rawDataList.map((e) {
//     return CustomerStaticData.fromJson(e as Map<String, dynamic>);
//   }).toList();

//   return customerStaticDataList;
// }


Future<CustomerStaticData> loadCustomerStaticData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final customerDataJson = prefs.getString('customerStaticData');

  if (customerDataJson != null) {
    final Map<String, dynamic> customerDataMap = json.decode(customerDataJson);
    final CustomerStaticData customerData =
        CustomerStaticData.fromJson(customerDataMap);
    return customerData;
  }

  // If data is not found in SharedPreferences, fetch it from JSON
  final jsonStr = await rootBundle.loadString(pathToJson);
  final jsonData = json.decode(jsonStr);
  final List<dynamic> rawDataList = jsonData['customerStaticData'];

  final CustomerStaticData customerData =
      CustomerStaticData.fromJson(rawDataList.first);
  prefs.setString('customerStaticData', json.encode(rawDataList.first));
  return customerData;
}
