import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';
import '../constants/restaurant.dart';
import '../widget/custom_appbar.dart';
import '../widget/food_list.dart';
import '../widget/restaurant_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            leftIcon: Icons.arrow_back,
            rightIcon: Icons.search,
          ),
          RestaurantInfo(),
          FoodList(
            selected: selected,
            restaurant: restaurant,
            callback: (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: FoodListView(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController: pageController,
              restaurant: restaurant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color: kPrimaryColor,
                    padding: 2,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 2,
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
