import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text("أو",style: TextStyles.semiBold16,),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
