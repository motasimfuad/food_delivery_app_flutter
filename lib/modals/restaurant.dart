import 'package:food_delivery_app_flutter/modals/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );

  static Restaurant generateRestaurant() {
    return Restaurant(
      'Restaurant',
      '20-30 min',
      '2.4km',
      'Restaurant',
      'assets/images/res_logo.png',
      'Orange sandwitches is delicious',
      4.7,
      {
        'Recommend': Food.generateRecommendedFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles': [],
        'Pizza': [],
      },
    );
  }
}