import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_data.freezed.dart';
part 'customer_data.g.dart';

@freezed
class CustomerStaticData with _$CustomerStaticData {
  factory CustomerStaticData({
    required String customerID,
    required String customerName,
    required String gender,
    required String title,
  }) = _CustomerStaticData;

  factory CustomerStaticData.fromJson(Map<String, dynamic> json) =>
      _$CustomerStaticDataFromJson(json);
}

@freezed
class CustomerTransactionData with _$CustomerTransactionData {
  factory CustomerTransactionData({
    required String customerID,
    required String transactionDate,
    required int transactionAmount,
    required String transactionDirection,
    required String transactionNarration,
  }) = _CustomerTransactionData;

  factory CustomerTransactionData.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionDataFromJson(json);
}
