import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/on_boarding/persentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.pageViewItem1Image,
          backgroundImage: Assets.pageViewItem1BackImage,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(" Fruit"), Text("HUB"), Text("مرحبًا بك في")],
          ),
          isVisible: pageController.hasClients? pageController.page == 0: true,
        ),
        PageViewItem(
          image: Assets.pageViewItem2Image,
          backgroundImage: Assets.pageViewItem2BackImage,
          subTitle:
          "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text("ابحث وتسوق"),
          isVisible: pageController.hasClients? pageController.page != 0: false,
        ),
      ],
    );
  }
}
