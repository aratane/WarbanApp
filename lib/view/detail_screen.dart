import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/food_data.dart';
import '../widget/custom_appbar.dart';
import '../widget/food_detail.dart';
import '../widget/food_image.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              leftIcon: Icons.arrow_back,
              rightIcon: Icons.favorite_outline,
              leftCallback: () => Navigator.pop(context),
            ),
            FoodImg(
              food: food,
            ),
            FoodDetail(
              food: food,
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          onPressed: () {},
          fillColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(
                  food.quantity!.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
