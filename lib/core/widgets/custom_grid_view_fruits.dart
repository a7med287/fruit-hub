import 'package:flutter/material.dart';

import 'fruit_item.dart';

class GridViewFruits extends StatelessWidget {
  const GridViewFruits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163/214,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8
      ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
    );
  }
}
