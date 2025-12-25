
import 'package:currency_convertor/models/currency_rate.dart';

String conversion(ExchangeRateModel rateExchange, String baseCountry ,String toCountry ,String amount){
  
  final double? baseRate = rateExchange.rates[baseCountry];
  final double? toRate = rateExchange.rates[toCountry];

  if (baseRate == null || toRate == null) {
    return "0.0000";
  }

  final double result = (double.parse(amount)/baseRate)*toRate;
  return result.toStringAsFixed(4);
}