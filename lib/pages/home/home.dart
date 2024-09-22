import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tomato/pages/home/widgets/food_menu.dart';
import 'package:tomato/pages/home/widgets/main_header.dart';

import '../../common/grid_builder.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Tomato.',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.search_normal,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.shopping_bag,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.user,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              MainHeader(),
              SizedBox(height: 15),

              // Menu
              FoodMenu(),
              Divider(),
              SizedBox(height: 32),

              // Body
              Text(
                'Top dishes near you',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(height: 16),
              AppGridBuilder(title: 'Top Dishes'),
            ],
          ),
        ),
      ),
    );
  }
}