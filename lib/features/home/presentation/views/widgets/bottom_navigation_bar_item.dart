import 'package:flutter/cupertino.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';

import 'active_bottom_navigation_bar.dart';
import 'in_active_bottom_navigation_bar.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveBottomNavigationBarItem(
          image: bottomNavigationBarEntity.activeImage,
        )
        : InActiveBottomNavigationBarItem(
          image: bottomNavigationBarEntity.inActingImage,
        );
  }
}
