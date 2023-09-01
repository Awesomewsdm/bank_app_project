import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc()
      : super(
          const NavigationState(
              selectedIndex: 0,
              backgroundColor: tPrimaryColor,
              textColor: tWhiteColor),
        ) {
    on<NavigationTabSelected>(_onNavigationTabSelected);
  }

  void _onNavigationTabSelected(
      NavigationTabSelected event, Emitter<NavigationState> emit) {
    emit(
      NavigationState(
          selectedIndex: event.selectedTab,
          backgroundColor: tPrimaryColor,
          textColor: tWhiteColor),
    );
  }

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is NavigationTabSelected) {
      final textColor = event.selectedTab == 0
          ? tSecondaryColor
          : tWhiteColor; // Customize text color
      final backgroundColor = event.selectedTab == 0
          ? tPrimaryColor
          : tWhiteColor; // Customize background color
      yield NavigationState(
        selectedIndex: event.selectedTab,
        textColor: textColor,
        backgroundColor: backgroundColor,
      );
    }
  }
}
