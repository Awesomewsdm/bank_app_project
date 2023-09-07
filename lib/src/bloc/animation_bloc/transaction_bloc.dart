import 'package:bank_app/src/bloc/animation_bloc/transaction_state.dart';
import 'package:bank_app/src/service/customer_transaction_data.dart';
import 'package:bloc/bloc.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionInitialState());

  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    if (event is LoadTransactionDataEvent) {
      // Fetch and load your transaction data here
      final transactionDataList = await loadTransactionData(event.filter);
      yield TransactionDataLoadedState(transactionDataList);
    }
  }
}
