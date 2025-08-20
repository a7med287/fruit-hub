import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_text_styles.dart';
class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key, required this.text, required this.imaPath, this.onPressed,
  });

  final String text,imaPath;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            SvgPicture.asset(imaPath),
            Spacer(),
            Text(
              text,
              style: TextStyles.semiBold16.copyWith(
                color: Color(0xff0C0D0D),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
