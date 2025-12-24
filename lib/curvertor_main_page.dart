import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/home_page.dart';
import 'package:flutter/material.dart';

class CurvertorMainPage extends StatelessWidget {
  const CurvertorMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}