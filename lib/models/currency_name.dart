import 'dart:convert';

CurrencyNames currencyNamesFromJson(String str) =>
    CurrencyNames.fromJson(json.decode(str));

class CurrencyNames {
  final Map<String, String> names;

  CurrencyNames({required this.names});

  factory CurrencyNames.fromJson(Map<String, dynamic> json) {
    return CurrencyNames(
      names: json.map(
        (key, value) => MapEntry(key, value.toString()),
      ),
    );
  }
}
