import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tomato/pages/auth/login.dart';
import 'package:tomato/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Outfit',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
          border:  const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          enabledBorder:  const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          errorBorder:  const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder:  const OutlineInputBorder().copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
        )
      ),
      home: const LoginScreen(),
    );
  }
}




