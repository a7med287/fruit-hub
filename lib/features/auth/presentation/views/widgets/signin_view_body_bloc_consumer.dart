import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/build_snak_bar.dart';
import 'package:fruit_hub/core/widgets/custom_progress_%20hud.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import '../../cubits/signin_cubit/signin_cubit.dart';
import 'login_view_body.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if(state is SigninSuccess){
          buildSnackBar(context, "Login Success");
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        }
        if(state is SigninFailure){
          buildSnackBar(context, state.message,isError: true);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
          child: SigninViewBody(),
        );
      },
    );
  }
}
