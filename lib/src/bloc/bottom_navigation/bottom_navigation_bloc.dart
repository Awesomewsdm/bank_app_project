import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc()
      : super(
          const NavigationState(
            backgroundColor: tPrimaryColor,
              selectedIndex: 0,
              navBgColor1: tPrimaryColor,
              navBgColor2: tWhiteColor,
              textColor: tOrangeColor,
              iconColor: tOrangeColor),
        ) {
    on<NavigationTabSelected>(_onNavigationTabSelected);
  }

  void _onNavigationTabSelected(
      NavigationTabSelected event, Emitter<NavigationState> emit) {
    emit(
      NavigationState(
          selectedIndex: event.selectedTab,
          backgroundColor: 
          event.selectedTab == 0
          ? tPrimaryColor
          : tWhiteColor,
          navBgColor1: 
          event.selectedTab == 0
          ? tPrimaryColor
          : tWhiteColor,
navBgColor2:  
event.selectedTab == 0
          ? tPrimaryColor
          : tWhiteColor
 ,
          textColor: event.selectedTab == 0 ?
          tOrangeColor:
       tWhiteColor,  
           iconColor:
           event.selectedTab == 0 
      ? tOrangeColor:
       tWhiteColor, 
           ),
    );
  }

 
}
