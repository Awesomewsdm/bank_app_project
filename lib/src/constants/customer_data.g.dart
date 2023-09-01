// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerStaticData _$$_CustomerStaticDataFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerStaticData(
      customerID: json['customerID'] as String,
      customerName: json['customerName'] as String,
      gender: json['gender'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_CustomerStaticDataToJson(
        _$_CustomerStaticData instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'customerName': instance.customerName,
      'gender': instance.gender,
      'title': instance.title,
    };

_$_CustomerTransactionData _$$_CustomerTransactionDataFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerTransactionData(
      customerID: json['customerID'] as String,
      transactionDate: json['transactionDate'] as String,
      transactionAmount: json['transactionAmount'] as int,
      transactionDirection: json['transactionDirection'] as String,
      transactionNarration: json['transactionNarration'] as String,
    );

Map<String, dynamic> _$$_CustomerTransactionDataToJson(
        _$_CustomerTransactionData instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'transactionDate': instance.transactionDate,
      'transactionAmount': instance.transactionAmount,
      'transactionDirection': instance.transactionDirection,
      'transactionNarration': instance.transactionNarration,
    };
