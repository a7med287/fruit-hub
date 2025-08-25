import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ActiveBottomNavigationBarItem extends StatelessWidget {
  const ActiveBottomNavigationBarItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 35,
      width: 35,
      child: SvgPicture.asset(image),
    );
  }
}
