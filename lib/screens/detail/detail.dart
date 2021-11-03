import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/constants/colors.dart';
import 'package:food_delivery_app_flutter/modals/food.dart';
import 'package:food_delivery_app_flutter/screens/detail/widget/food_detail.dart';
import 'package:food_delivery_app_flutter/screens/detail/widget/food_img.dart';
import 'package:food_delivery_app_flutter/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_border_outlined,
              leftCallBack: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food)
          ],
        ),
      ),
    );
  }
}
