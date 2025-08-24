import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_prefrences_singletone.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/on_boarding/persentation/views/on_boarding_view.dart';

import '../../../../auth/presentation/views/signin_view.dart';
class SplashViewBody extends StatefulWidget{
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             SvgPicture.asset(Assets.splashImage_1),
           ],
         ),
        SvgPicture.asset(Assets.splashImage_2),
        SvgPicture.asset(Assets.splashImage_3,fit: BoxFit.fill,)
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(Duration(seconds: 3),() {
      bool seenOnBoarding = Prefs.getBool(kIsOnBoardingSeen);
      if(!seenOnBoarding){
        Navigator.pushReplacementNamed(context, SigninView.routeName);
      }else{
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    },);
  }
}