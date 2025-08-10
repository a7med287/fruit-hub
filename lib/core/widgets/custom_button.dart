import 'package:flutter/material.dart';

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
              backgroundColor: AppColors.kPrimaryColor
          ),
          onPressed: (){}, child: Text("ابدأ الان",style: TextStyle(
        fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),)
      ),
    );
  }
}
