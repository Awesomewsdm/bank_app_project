import 'package:bank_app/src/bloc/splash_bloc/splash_event.dart';
import 'package:bloc/bloc.dart';

class SplashBloc extends Bloc<SplashEvent, bool> {
  SplashBloc(super.initialState);

  bool get initialState => true;

  Stream<bool> mapEventToState(SplashEvent event) async* {
    if (event is NavigateToNextScreenEvent) {
      yield false;
    }
  }
}
