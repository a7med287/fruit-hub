import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
        return FeaturedItem();
      },),
    );
  }
}
