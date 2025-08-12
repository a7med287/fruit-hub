import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                   S.of(context).forgot_password,
                    style: TextStyles.semiBold13.copyWith(color: Color(0xff2D9F5D)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(text: "تسجيل دخول"),
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("لا تمتلك حساب؟  ",style: TextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),),
                Text("قم بإنشاء حساب",style: TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
