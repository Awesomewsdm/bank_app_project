import 'package:bank_app/src/constants/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            router.push(pLogin); // Navigate to the Services screen
          },
          child: const Text('Go to Services'),
        ),
      ),
    );
  }
}
