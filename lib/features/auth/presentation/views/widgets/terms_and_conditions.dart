import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
   bool isAcceptedTerms = false ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isAcceptedTerms,
          onChecked: (bool value) {
              setState(() {
                isAcceptedTerms = value ;
              });
          },
        ),
        SizedBox(width: 16,),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - kHorizontalPadding * 2 - 48,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "من خلال إنشاء حساب ، فإنك توافق على",
                  style: TextStyles.semiBold13,
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

