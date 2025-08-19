import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_prefrences_singletone.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

import '../../../../auth/presentation/views/signin_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisible,
  });

  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: SafeArea(
                  child: Visibility(
                    visible: isVisible,
                    child: TextButton(
                      onPressed: () {
                        Prefs.setBool(kIsOnBoardingSeen, true);
                        Navigator.pushReplacementNamed(context, LoginView.routeName);
                      },
                      child: Text("تخط", style: TextStyles.regular13.copyWith(color: Color(
                          0xff575d5e))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 37.0),
          child: Text(
            textAlign: TextAlign.center,
            subTitle,
            style: TextStyles.semiBold13.copyWith(color: Color(0xff4E5556)),
          ),
        ),
      ],
    );
  }
}
