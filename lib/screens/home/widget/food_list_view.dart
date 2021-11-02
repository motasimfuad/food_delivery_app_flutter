import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/modals/restaurant.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  const FoodListView(
    this.selected,
    this.callback,
    this.pageController,
    this.restaurant,
  );

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
    );
  }
}
