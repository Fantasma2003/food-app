import 'package:flutter/material.dart';
import 'package:tomato/model/products.dart';

import '../food/food_description.dart';
import '../model/food_lists.dart';

class AppGridBuilder extends StatelessWidget {
  const AppGridBuilder({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    List<Food> foodList = FoodLists().getProductsByType(title);

    return GridView.builder(
      itemCount: foodList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 280,
      ),
      itemBuilder: (_, index) {
        return FoodDescription(
          foodName: foodList[index].foodName,
          foodDescription: foodList[index].foodDescription,
          price: foodList[index].price,
          imageUrl: foodList[index].imageUrl,
        );
      },
    );
  }
}