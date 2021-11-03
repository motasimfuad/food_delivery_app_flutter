import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/constants/colors.dart';
import 'package:food_delivery_app_flutter/modals/restaurant.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/food_list.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/food_list_view.dart';
import 'package:food_delivery_app_flutter/screens/home/widget/restaurant_info.dart';
import 'package:food_delivery_app_flutter/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
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
              pageController.jumpToPage(index);
            },
            restaurant,
          ),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {});
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 8,
                  width: 8,
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: DotBorder(
                    color: kPrimary,
                    width: 2,
                    padding: 2,
                  ),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimary,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
