import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget{
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

         Expanded(child: OnBoardingPageView()),
         DotsIndicator(dotsCount: 2,
         decorator: DotsDecorator(
           activeColor: AppColors.kPrimaryColor,
           color: AppColors.kPrimaryColor.withValues(alpha: .5),

         ),
         ),
      ],
    );
  }
}
