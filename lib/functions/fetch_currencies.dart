import 'package:currency_convertor/models/currency_name.dart';
import 'package:http/http.dart' as http;

Future<CurrencyNames> fetchCurrencies() async{
    var response = await http.get(Uri.parse(
    'https://api.frankfurter.dev/v1/currencies'));
    
  String jsonString = response.body;

  CurrencyNames currencyNames =
      currencyNamesFromJson(jsonString);
  return currencyNames;

}