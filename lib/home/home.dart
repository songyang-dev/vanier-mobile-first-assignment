import 'package:flutter/material.dart';

import '../food/food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("My Food Choices"),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          FoodCard(name: "Ice Cream", imagePath: "assets/ice cream.jpg"),
          FoodCard(name: "Chili", imagePath: "assets/classic chili.jpg"),
          FoodCard(
              name: "Baked Pork",
              imagePath: "assets/baked pork tenderloin.jpg"),
          FoodCard(name: "Spring Rolls", imagePath: "assets/spring rolls.jpg"),
          FoodCard(
              name: "Broccoli with Garlic", imagePath: "assets/broccoli.jpg"),
          FoodCard(name: "Spaghetti", imagePath: "assets/spaghetti.jpg"),
          FoodCard(name: "Sushi", imagePath: "assets/sushi.jpg"),
          FoodCard(
              name: "Maple Syrup Pancake", imagePath: "assets/pancake.jpg"),
        ],
      ),
    );
  }
}
