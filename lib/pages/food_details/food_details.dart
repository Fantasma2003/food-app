import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:get/get.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({
    super.key,
    required this.foodName,
    required this.foodDescription,
    required this.price,
    required this.imageUrl,
    this.rating = 3,
  });

  final String foodName;
  final String foodDescription;
  final String price;
  final String imageUrl;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.4),
              blurRadius: 3,
              spreadRadius: .5,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.minus),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text('0', style: TextStyle(fontSize: 23)),
                const SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.add),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                backgroundColor: Colors.deepOrange,
              ),
              child: const Text('Add to cart', style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          foodName,
                          style: const TextStyle(fontSize: 28),
                          overflow: TextOverflow.ellipsis,
                        ),
                        StarRating(rating: rating),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Price:',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          r'$' + price,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w200,
                              color: Colors.deepOrange),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Flexible(
                      child: Text(
                        foodDescription,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  const StarRating({super.key, required this.rating});

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => Icon(
          Iconsax.star1,
          color: _getColor(index),
        ),
      ),
    );
  }

  Color _getColor(index) {
    if (index < rating) {
      return Colors.amber;
    } else {
      return Colors.grey.withOpacity(.5);
    }
  }
}
