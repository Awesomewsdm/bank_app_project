import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NavigationState extends Equatable {
  final int selectedIndex;
  final Color textColor; // Add text color property
  final Color backgroundColor;

  const NavigationState(
      {required this.textColor,
      required this.backgroundColor,
      required this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex, textColor, backgroundColor];
}
