import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/modals/restaurant.dart';
import 'package:food_delivery_app_flutter/screens/detail/detail.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/food_item.dart';

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
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              restaurant.menu[category[selected]]![index],
                            ),
                          ),
                        );
                      },
                      child:
                          FoodItem(restaurant.menu[category[selected]]![index]),
                    ),
                separatorBuilder: (_, index) => const SizedBox(height: 15),
                itemCount: restaurant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
