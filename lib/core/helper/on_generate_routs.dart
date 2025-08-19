import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/persentation/views/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

import '../../features/auth/presentation/views/signin_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView(),);
     case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView(),);
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView(),);
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView(),);
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold(),);
  }

}