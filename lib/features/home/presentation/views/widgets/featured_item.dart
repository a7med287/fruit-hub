import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_featured_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),

          ),
          child:Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                right: MediaQuery.of(context).size.width *.3,
                child: SvgPicture.asset(Assets.pageViewItem2Image),
              ),
              Container(
                width: (MediaQuery.of(context).size.width) / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(4),bottomRight:  Radius.circular(4)),
                  image: DecorationImage(
                    image: svg.Svg(Assets.backgroundContainerFeaturedItem),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      Text(
                        "عروض العيد",
                        style: TextStyles.regular13.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "خصم 25%",
                        style: TextStyles.bold19.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 14),
                      CustomFeaturedButton(onPressed: () {}),
                      SizedBox(height: 29),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
