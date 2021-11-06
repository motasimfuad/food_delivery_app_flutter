import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_flutter/constants/colors.dart';
import 'package:food_delivery_app_flutter/modals/food.dart';
import 'package:food_delivery_app_flutter/screens/detail/widget/food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                Icons.access_time_outlined,
                Colors.blue,
                food.waitTime,
              ),
              _buildIconText(
                Icons.star_outline,
                Colors.amber,
                '${food.score}',
              ),
              _buildIconText(
                Icons.local_fire_department_outlined,
                Colors.red,
                '${food.cal}',
              ),
            ],
          ),
          SizedBox(height: 30),
          FoodQuantity(food),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          // ingredients list
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            height: 52,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            food.ingredients[index].keys.first,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: food.ingredients.length),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            food.about,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color iconColor, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
        SizedBox(width: 3),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
