import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/constants/colors.dart';
import 'package:food_delivery_app_flutter/modals/restaurant.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/food_list.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/restaurant_info.dart';
import 'package:food_delivery_app_flutter/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
            leftCallBack: () {},
          ),
          RestaurantInfo(),
          FoodList(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
            },
            restaurant,
          )
        ],
      ),
    );
  }
}
