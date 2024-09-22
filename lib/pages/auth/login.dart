import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tomato/pages/home/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 64, left: 32, right: 32, bottom: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Image(
                height: 120,
                image: AssetImage('assets/images/logo.png'),
              ),
              const Text(
                'Welcome back!!!',
                style: TextStyle(fontSize: 32),
              ),
              const Text(
                'Enjoy your meal hot and fresh, right at your doorstep.',
                style: TextStyle(fontSize: 17),
              ),

              // Form
              const SizedBox(height: 32),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const Text('Remember me'),
                          ],
                        ),
                        TextButton(onPressed: () {}, child: const Text('forgot password?')),
                      ],
                    ),

                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: ()=> Get.offAll(const MainFoodPage()),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFFDC4D01),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: const RoundedRectangleBorder().copyWith(
                              borderRadius: BorderRadius.circular(12)),
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('Log In'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: const RoundedRectangleBorder().copyWith(
                              borderRadius: BorderRadius.circular(12)),
                          shadowColor: Colors.transparent,
                        ),
                        child: const Text('Create Account'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
