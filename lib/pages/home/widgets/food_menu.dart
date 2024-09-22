import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/list_view_model.dart';
import '../../food_categories/food_category.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final FoodLists1 foodLists1 = FoodLists1();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Explore our menu',
          style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        const Text(
          'Choose from a diverse menu featuring a delectable array of dishes.',
          style: TextStyle(fontSize: 14, color: Colors.black38),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 110,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: foodLists1.foodList.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              final foodItem = foodLists1.foodList[index];
              return GestureDetector(
                onTap: () => Get.to(FoodCategoriesScreen(title: foodItem.foodType)),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      child: Image.asset(foodItem.imageUrl),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 80,
                      child: Text(
                        foodItem.foodType,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}