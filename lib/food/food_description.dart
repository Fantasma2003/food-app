import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tomato/pages/food_details/food_details.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({
    super.key,
    required this.foodName,
    required this.foodDescription,
    required this.price,
    required this.imageUrl,
  });

  final String foodName;
  final String foodDescription;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.1),
              blurRadius: 1,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () => Get.to(FoodDetailsScreen(foodName: foodName, foodDescription: foodDescription, price: price, imageUrl: imageUrl)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18), topRight: Radius.circular(18),
                  ),
                  child: Image(height: 170, fit: BoxFit.cover, image: AssetImage(imageUrl)),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: IconButton(onPressed: () {}, padding: EdgeInsets.zero, icon: const Icon(Icons.add)),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  foodDescription,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 5),
                Text(
                  r'$' + price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}