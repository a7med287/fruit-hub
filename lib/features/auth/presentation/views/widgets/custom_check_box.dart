import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChecked});

  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
          width: 24,
          height: 24,
          duration: Duration(milliseconds: 150),
          decoration: ShapeDecoration(
            color: isChecked ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(width: 1.5, color: isChecked ? AppColors.primaryColor :  Color(0xffdcdede)),
            ),
          ),
          child: isChecked ? Padding(
            padding: const EdgeInsets.all(1.0),
            child: SvgPicture.asset(Assets.checkIcon),
          ) : SizedBox()
      ),
    );
  }
}
