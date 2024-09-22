import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(image: AssetImage('assets/images/header_img.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order your \nfavourite food here',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Our mission is to satisfy your cravings and elevate your dining experience, one delicious meal at a time.',
              style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 28)),
              ),
              child: const Text('View Menu', style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}