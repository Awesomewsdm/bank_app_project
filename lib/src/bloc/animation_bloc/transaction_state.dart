import 'package:bank_app/src/constants/customer_data.dart';

abstract class TransactionEvent {}

class LoadTransactionDataEvent extends TransactionEvent {
  final String filter;

  LoadTransactionDataEvent(this.filter);
}

abstract class TransactionState {}

class TransactionInitialState extends TransactionState {}

class TransactionDataLoadedState extends TransactionState {
  final List<CustomerTransactionData> transactionDataList;

  TransactionDataLoadedState(this.transactionDataList);
}
