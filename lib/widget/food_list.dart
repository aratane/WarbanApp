import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/restaurant.dart';
import '../view/detail_screen.dart';
import 'food_item.dart';

class FoodList extends StatelessWidget {
  final int? selected;
  final Function? callback;
  final Restaurant? restaurant;
  const FoodList({
    Key? key,
    this.selected,
    this.callback,
    this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurant!.menu.keys.toList();
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback!(index),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selected == index ? kPrimaryColor : Colors.white,
                  ),
                  child: Text(
                    category[index],
                    style: TextStyle(
                        color: selected == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 20,
              ),
          itemCount: category.length),
    );
  }
}

class FoodListView extends StatelessWidget {
  final int? selected;
  final Function? callback;
  final PageController? pageController;
  final Restaurant? restaurant;
  const FoodListView({
    Key? key,
    this.selected,
    this.callback,
    this.pageController,
    this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurant!.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback!(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              food:
                                  restaurant!.menu[category[selected!]]![index],
                            ),
                          ),
                        );
                      },
                      child: FoodItem(
                        food: restaurant!.menu[category[selected!]]![index],
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: restaurant!.menu[category[selected!]]!.length))
            .toList(),
      ),
    );
  }
}
