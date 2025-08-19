import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/password_filed.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../generated/l10n.dart';
import 'custom_social_button.dart';
import 'dont_have_an_account.dart';
import 'or_divider.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).forgot_password,
                      style: TextStyles.semiBold13.copyWith(
                        color: Color(0xff2D9F5D),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "تسجيل دخول",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signinWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(height: 32),
              const DontHaveAnAccountWidget(),
              const  SizedBox(height: 32),
              const OrDivider(),
              const  SizedBox(height: 16),
              const CustomSocialButton(
                text: "تسجيل بواسطة جوجل",
                imaPath: Assets.googleIcon,
              ),
              const SizedBox(height: 16),
              const  CustomSocialButton(
                text: "تسجيل بواسطة أبل",
                imaPath: Assets.appleIcon,
              ),
              const  SizedBox(height: 16),
              const CustomSocialButton(
                text: "تسجيل بواسطة فيسبوك",
                imaPath: Assets.facebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
