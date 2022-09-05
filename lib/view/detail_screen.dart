import 'package:favorite_button/favorite_button.dart';
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
              rightIcon: Icons.shopping_cart,
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
        width: 56,
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
              FavoriteButton(
                iconSize: 55,
                iconDisabledColor: Colors.black,
                valueChanged: (isFavorite) {
                  print('Is Favorite : $isFavorite');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
