import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_state.dart';
import 'package:bank_app/src/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc()
      : super(
          const NavigationState(
            backgroundColor: tWhiteColor,
              selectedIndex: 0,
              navBgColor1: tPrimaryColor,
              navBgColor2: tWhiteColor,
              textColor1: tOrangeColor,
              textColor2: tPrimaryColor,
             iconColor1: tOrangeColor, 
             iconColor2: tPrimaryColor),
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
          ? tWhiteColor 
          : tPrimaryColor,
          navBgColor1: 
          event.selectedTab == 0
          ? tPrimaryColor
          : tWhiteColor,
          navBgColor2:  
          event.selectedTab == 0
          ? tWhiteColor 
          : tPrimaryColor,
          textColor1: 
          event.selectedTab == 0 
          ? tOrangeColor:
          tPrimaryColor,
          textColor2: event.selectedTab == 0 
          ? tPrimaryColor:
            tOrangeColor,  
           iconColor1:
           event.selectedTab == 0 
          ? tOrangeColor:
          tPrimaryColor,
          iconColor2:
          event.selectedTab == 0 
          ?tPrimaryColor :tOrangeColor
             , 
          ),
    );
  }
 
}
