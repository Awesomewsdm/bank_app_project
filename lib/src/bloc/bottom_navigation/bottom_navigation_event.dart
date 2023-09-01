import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object?> get props => [];
}

class NavigationTabSelected extends NavigationEvent {
  final int selectedTab;

  const NavigationTabSelected(this.selectedTab);

  @override
  List<Object?> get props => [selectedTab];
}
