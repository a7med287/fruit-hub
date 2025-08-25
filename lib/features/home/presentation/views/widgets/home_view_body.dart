import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/features/home/presentation/views/widgets/featured_list.dart';
import '../../../../../core/widgets/custom_grid_view_fruits.dart';
import '../../../../../core/widgets/custom_search_text_filed.dart';
import 'best_seller_header.dart';
import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  CustomHomeAppBar(),
                  SizedBox(height: 16),
                  CustomSearchTextField(),
                  SizedBox(height: 12),
                  FeaturedList(),
                  SizedBox(height: 12),
                  BestSellerHeader(),
                  SizedBox(height: 8),
                ],
              ),
            ),
          GridViewFruits(),
        ],
      ),
    );
  }
}

