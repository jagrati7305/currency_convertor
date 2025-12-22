import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/home_page.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: Text(
          'CURVERTOR',
          style: TextStyle(
            color: AppColors.orangeColor,
            fontWeight: FontWeight.w700,
            fontSize: Dimension.heightFactor*24),
          ),
          centerTitle: true,
          backgroundColor: AppColors.mainPurpleColor,
          ),
        body:HomePage(),
        backgroundColor: AppColors.backgroundColor,
      )
    );
  }
}

