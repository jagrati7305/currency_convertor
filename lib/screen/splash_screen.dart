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

  @override
  void initState() {
    super.initState();
      
    currencies = fetchCurrencies();
    rate = fetchRate();

    Timer(Duration(seconds: 4), (){
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
      body: Column(
            
            children: [
              SizedBox(
                height: Dimension.screenHeight/2.5,
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
                    color: AppColors.textFieldColor,
                    size: Dimension.widthFactor*45,
                  ),
                ),
              ),
              Text(
                'CURVERTOR',
                style: TextStyle(
                  color: AppColors.textFieldColor,
                  fontSize: Dimension.heightFactor*24,
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