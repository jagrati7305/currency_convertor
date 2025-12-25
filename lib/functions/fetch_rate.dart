import 'dart:convert';

import 'package:currency_convertor/models/currency_rate.dart';
import 'package:http/http.dart' as http;

Future<ExchangeRateModel> fetchRate() async{
    var response = await http.get(Uri.parse(
    'https://api.frankfurter.dev/v1/latest?base=INR'));

    String jsonString = response.body;

    ExchangeRateModel exchangeRateModel=ExchangeRateModel.fromJson(jsonDecode(jsonString));
    return exchangeRateModel;
}