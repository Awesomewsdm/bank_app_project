import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NavigationState extends Equatable {
  final int selectedIndex;
  final Color textColor; 
  final Color backgroundColor;
  final Color iconColor;
  final Color navBgColor1;
  final Color navBgColor2;

  const NavigationState(
      {required this.textColor,
      required this.backgroundColor,
      required this.selectedIndex,required this.iconColor,required this.navBgColor1 , required this.navBgColor2});

  @override
  List<Object?> get props => [selectedIndex, textColor, backgroundColor, iconColor, navBgColor1,navBgColor2];
}
