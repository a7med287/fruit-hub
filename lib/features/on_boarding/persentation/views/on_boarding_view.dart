import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/persentation/views/widgets/on_boarding_view_body.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const OnBoardingViewBody()
    );
  }
}
