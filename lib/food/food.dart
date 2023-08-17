import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  final String name;
  final String imagePath;

  const FoodScreen({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                name,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Image.asset(imagePath),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Delicious!",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Divider(),
          ElevatedButton.icon(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.menu_book,
            ),
            label: const Text("See all the food!"),
          ),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const FoodCard({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  FoodScreen(name: name, imagePath: imagePath),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            Align(
              alignment: Alignment.center,
              heightFactor: 3,
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
