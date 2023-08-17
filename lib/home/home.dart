import 'package:flutter/material.dart';

import '../food/food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Food"),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          const FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
        ],
      ),
    );
  }
}
