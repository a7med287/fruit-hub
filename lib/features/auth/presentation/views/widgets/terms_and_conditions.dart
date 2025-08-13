import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - kHorizontalPadding*2 - 48 ,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "من خلال إنشاء حساب ، فإنك توافق على",
                    style: TextStyles.semiBold13
                ),
                TextSpan(
                  text: " الشروط والأحكام الخاصة بنا",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
