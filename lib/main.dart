import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Dimension.screenWidth = MediaQuery.of(context).size.width;
    Dimension.screenHeight = MediaQuery.of(context).size.height;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curvertor',
      home: SplashScreen()
      
    );
  }
}

