import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/persentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget{
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem()
      ],
    );
  }
}
