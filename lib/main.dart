import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const CookingRecipeApp());
}

class CookingRecipeApp extends StatelessWidget {
  const CookingRecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
    );
  }
}
