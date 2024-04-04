import 'package:flutter/material.dart';
import 'package:trustify/widget/best_offer.dart';
import 'package:trustify/widget/categories.dart';
import 'package:trustify/widget/custom_app_bar.dart';
import 'package:trustify/widget/custom_bottom_navigation_bar.dart';
import 'package:trustify/widget/recommended_house.dart';
import 'package:trustify/widget/search_input.dart';
import 'package:trustify/widget/welcome_text.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedHouse(),
            BestOffer()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
