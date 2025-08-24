import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.profileImage),
      title: Text(
        "صباح الخير !..",
        style: TextStyles.regular16.copyWith(color: Color(0xff949D9E)),
      ),
      subtitle: Text("أحمد رزق",style: TextStyles.bold16,),
      trailing: CircleAvatar(
          radius: 22 ,
          child: SvgPicture.asset(Assets.notificationIcon)
      ),
    );
  }}