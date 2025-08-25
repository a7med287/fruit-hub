import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';

class FruitItem extends StatefulWidget {
  const FruitItem({super.key});

  @override
  State<FruitItem> createState() => _FruitItemState();
}

class _FruitItemState extends State<FruitItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      width: 163,
      decoration: BoxDecoration(
        color: Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon:
                isFavorite
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_border_rounded),
          ),
          Positioned.fill(
            top: 20,
            left: 8,
            right: 8,
            child: Column(
              children: [
                Image.asset(Assets.watermelon),
                ListTile(
                  title: Text("بطيخ", style: TextStyles.semiBold13),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "20جنية",
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: " / ",
                            style: TextStyles.bold13.copyWith(
                              color: AppColors.lightSecondaryColor,
                            ),
                          ),
                          TextSpan(
                            text: "الكيلو",
                            style: TextStyles.semiBold13.copyWith(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
