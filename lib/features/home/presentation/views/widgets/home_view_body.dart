import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import '../../../../../core/widgets/custom_search_text_filed.dart';
import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomHomeAppBar(),
                SizedBox(height: 16),
                CustomSearchTextField(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

