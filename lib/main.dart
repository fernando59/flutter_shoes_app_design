import 'package:app_shoes/screens/shoe_description_screen.dart';
import 'package:app_shoes/screens/shoes_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shoes App',
        debugShowCheckedModeBanner: false,
        // home: ShoesScreen());
        home: ShoeDescriptionScreen());
  }
}
