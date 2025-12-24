import 'dart:async';

import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/curvertor_main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=> CurvertorMainPage(),
          )
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
            
            children: [
              SizedBox(
                height: Dimension.screenHeight/2.2,
              ),
              Container(
                margin: EdgeInsets.only(bottom: Dimension.heightFactor*4),
                width: Dimension.widthFactor*100,
                height: Dimension.widthFactor*100,
                decoration: BoxDecoration(
                  color: AppColors.mainPurpleColor,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Icon(
                    Icons.currency_exchange,
                    color: AppColors.orangeColor,
                    size: Dimension.widthFactor*45,
                  ),
                ),
              ),
              Text(
                'CURVERTOR',
                style: TextStyle(
                  color: AppColors.mainPurpleColor,
                  fontSize: Dimension.heightFactor*24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5
                ),
              ),
              SizedBox(
                height: Dimension.screenHeight/3,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Made with',
                          style: TextStyle(
                            color: AppColors.textFieldColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimension.heightFactor*14
                          ),
                        ),
                        SizedBox(
                          width: Dimension.widthFactor*4,
                        ),
                        Icon(
                          Icons.favorite,
                          color: AppColors.textFieldColor,
                          size: Dimension.heightFactor*14,
                        )
                      ],
                    ),
                    Text(
                      'Jagrati',
                      style: TextStyle(
                        fontSize: Dimension.heightFactor*16,
                        color: AppColors.textFieldColor,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
            ],
          
        ),
      
    );
  }
}