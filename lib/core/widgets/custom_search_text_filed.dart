import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';
class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.searchIcon)),
          ),
          hintText: "ابحث عن.......",
          hintStyle: TextStyles.regular13.copyWith(color: Color(0xff949D9E)),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(Assets.filterIcon)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() =>
      OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
}
