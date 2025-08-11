import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget{
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
 late PageController pageController;

 var currentPage =0 ;
 @override
  void initState() {
    pageController =PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
    },);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

         Expanded(child: OnBoardingPageView(pageController: pageController,)),
         DotsIndicator(dotsCount: 2,
         decorator: DotsDecorator(
           activeColor: AppColors.kPrimaryColor,
           color: AppColors.kPrimaryColor.withValues(alpha: .5),

         ),
         ),
        SizedBox(
          height: 29,
        ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
           child: CustomButton(),
         ),
         SizedBox(
          height: 43,
        )
      ],
    );
  }
}

