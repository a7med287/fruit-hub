import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';

import '../../../../../core/widgets/custom_text_field.dart';
class LoginViewBody extends StatelessWidget{
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
              CustomTextFormField(hintText: 'البريد الإلكتروني',)
          ],
        ),
      ),
    );
  }
}

