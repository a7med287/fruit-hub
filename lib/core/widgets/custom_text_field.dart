import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
class CustomTextFormField extends StatelessWidget{
  const CustomTextFormField({super.key, required this.hintText, this.textInputType, this.suffixIcon});

  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: textInputType ,

      decoration: InputDecoration(
        suffixIcon: suffixIcon ,
        hintText: hintText ,
          hintStyle: TextStyles.bold13.copyWith(color: Color(0xff949D9E)),
          filled: true,
          fillColor: Color(0xffF9FAFA),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder()
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffE6E9EA),width: 1.5)
    );
  }
}
