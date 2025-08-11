import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';

import '../utils/app_colors.dart';
class CustomButton extends StatelessWidget{
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
              backgroundColor: AppColors.primaryColor
          ),
          onPressed: (){
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          }, child: Text("ابدأ الان",style: TextStyles.bold16.copyWith(color: Colors.white))
      ),
    );
  }
}
