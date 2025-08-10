import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
class SplashViewBody extends StatelessWidget{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SvgPicture.asset(Assets.splashImage_1),
           ],
         ),
        SvgPicture.asset(Assets.splashImage_2),
        SvgPicture.asset(Assets.splashImage_3,fit: BoxFit.fill,)
      ],
    );
  }
}