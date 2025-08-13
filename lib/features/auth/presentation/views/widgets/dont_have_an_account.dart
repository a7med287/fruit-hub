import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("لا تمتلك حساب؟  ",style: TextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),),
        GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, SignupView.routeName);
            },
            child: Text("قم بإنشاء حساب",style: TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),))
      ],
    );
  }
}
