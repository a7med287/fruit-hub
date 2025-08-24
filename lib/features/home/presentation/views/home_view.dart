import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = "homeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Hello Home")),
    );
  }
}
