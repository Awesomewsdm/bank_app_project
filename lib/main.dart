import 'package:bank_app/src/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:bank_app/src/constants/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}


