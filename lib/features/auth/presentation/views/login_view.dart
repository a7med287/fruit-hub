import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static  const String routeName = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Login View",style: TextStyles.regular26,),),
    );
  }
}
