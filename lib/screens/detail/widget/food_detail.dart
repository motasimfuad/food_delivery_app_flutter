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
