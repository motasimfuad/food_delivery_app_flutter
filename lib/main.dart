import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_flutter/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}
