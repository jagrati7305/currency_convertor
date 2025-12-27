
import 'package:currency_convertor/models/currency_rate.dart';


String conversion(ExchangeRateModel rateExchange, String baseCountry ,String toCountry ,String amount){
  final double? baseRate;
  if(rateExchange.rates[baseCountry]==null){
      baseRate=1;
  }else{
    baseRate = rateExchange.rates[baseCountry];
  }

  final double? toRate;
  
  if(rateExchange.rates[toCountry]==null){
      toRate=1;
  }else{
      toRate = rateExchange.rates[toCountry];
  }

  if (baseRate == null || toRate == null) {

    return "0.0000";
  }

  final double result = (double.parse(amount)/baseRate)*toRate;
  return result.toStringAsFixed(4);
}