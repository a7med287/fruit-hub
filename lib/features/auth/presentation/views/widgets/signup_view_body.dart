import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children:  [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
             CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_rounded,
                  color: Color(0xffC9CECF),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const TermsAndConditions(),
          ],
        ),
      ),
    );
  }
}

