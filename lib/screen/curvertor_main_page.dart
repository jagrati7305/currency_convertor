import 'package:currency_convertor/constants/colors.dart';
import 'package:currency_convertor/constants/dimension.dart';
import 'package:currency_convertor/models/currency_name.dart';
import 'package:currency_convertor/models/currency_rate.dart';
import 'package:currency_convertor/screen/home_page.dart';
import 'package:flutter/material.dart';

class CurvertorMainPage extends StatefulWidget {
  final Future<CurrencyNames> currenciesFuture;
  final Future<ExchangeRateModel> rateFuture;
  const CurvertorMainPage({super.key,
  required this.currenciesFuture,
  required this.rateFuture});

  @override
  State<CurvertorMainPage> createState() => _CurvertorMainPageState();
}

class _CurvertorMainPageState extends State<CurvertorMainPage> {
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CurrencyNames>(
      future: widget.currenciesFuture, 
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            )
          );
        }

        if(snapshot.hasError){
          return const Scaffold(
            body: Center(
              child: Text('Error Loading Currencies'),
            ),
          );
        }

        final currencies = snapshot.data!;

      return FutureBuilder(
        future: widget.rateFuture,
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              )
            );
          }

        if(snapshot.hasError){
          return const Scaffold(
            body: Center(
              child: Text('Error Loading Currencies'),
            ),
          );
        }

        final rate = snapshot.data!; 
        
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
          body:HomePage(allcurrencies: currencies,rateChange: rate,),
        backgroundColor: AppColors.backgroundColor,
    );
      });
      });
  }
}