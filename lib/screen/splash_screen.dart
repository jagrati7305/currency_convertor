import 'dart:async';
import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/functions/fetch_currencies.dart';
import 'package:currency_convertor/functions/fetch_rate.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:currency_convertor/models/currency_rate.dart';
import 'package:currency_convertor/screen/curvertor_main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final Future<CurrencyNames> currencies;
  late final Future<ExchangeRateModel> rate;
  double size=0;
  @override
  void initState() {
    super.initState();
      
    currencies = fetchCurrencies();
    rate = fetchRate();

    Timer(Duration(seconds: 5), (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=> CurvertorMainPage(currenciesFuture:  currencies,rateFuture: rate,),
          )
        );
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: TweenAnimationBuilder(
        tween: Tween(begin: 0.0,end: 100.0),
        duration: Duration(milliseconds: 2000),
        builder: (context,size,widget) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Dimension.screenHeight/2.5,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: Dimension.heightFactor*4),
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: AppColors.mainPurpleColor,
                        shape: BoxShape.circle,
                        boxShadow:[
                          BoxShadow(
                            color: Color.fromRGBO(3, 81, 182, 0.2),
                            blurRadius: size,
                            spreadRadius: size/2
                          )
                        ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.currency_exchange,
                          color: AppColors.textFieldColor,
                          size: size/2,
                        ),
                      ),
                    ),
                    Text(
                      'CURVERTOR',
                      style: TextStyle(
                        color: AppColors.textFieldColor,
                        fontSize: size/4,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5
                      ),
                    ),
                    SizedBox(
                      height: Dimension.screenHeight/2.8,
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
                                size: size/7,
                              )
                            ],
                          ),
                          Text(
                            'Jagrati',
                            style: TextStyle(
                              fontSize: size/7,
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
      ),
      
    );
  }
}