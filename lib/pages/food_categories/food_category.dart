import 'package:flutter/material.dart';

import '../../common/grid_builder.dart';

class FoodCategoriesScreen extends StatelessWidget {
  const FoodCategoriesScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: AppGridBuilder(title: title),
        ),
      ),
    );
  }
}
