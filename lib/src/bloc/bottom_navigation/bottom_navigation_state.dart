import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NavigationState extends Equatable {
  final int selectedIndex;
  final Color textColor1; 
  final Color textColor2; 
  final Color backgroundColor;
  final Color navBgColor1;
  final Color navBgColor2;
  final Color iconColor1;
  final Color iconColor2;

  const NavigationState( 
      {
      required this.textColor1,
      required this.textColor2,
      required this.backgroundColor,
      required this.selectedIndex,
      required this.navBgColor1,
      required this.iconColor1,
      required this.iconColor2, 
      required this.navBgColor2,});

  @override
  List<Object?> get props => [selectedIndex,textColor2, textColor1, backgroundColor, navBgColor1,navBgColor2];
}
