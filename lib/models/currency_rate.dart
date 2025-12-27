class ExchangeRateModel {
  final double amount;
  final String base;
  final String date;
  final Map<String, double> rates;

  ExchangeRateModel({
    required this.amount,
    required this.base,
    required this.date,
    required this.rates,
  });

  factory ExchangeRateModel.fromJson(Map<String, dynamic> json) {
    return ExchangeRateModel(
      amount: (json["amount"] as num).toDouble(),
      base: json["base"],
      date: json["date"],
      rates: Map<String, double>.from(
        json["rates"].map(
          (key, value) => MapEntry(key, (value as num).toDouble()),
        ),
      ),
    );
  }
}
