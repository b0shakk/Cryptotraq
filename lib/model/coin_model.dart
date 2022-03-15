import 'package:cryptotraq/model/source_model.dart';

class Coin {
  String name;
  String symbol;
  String? imageUrl;
  num price;
  num change;
  num changePercentage;
  
  Coin({ 
  required this.name,
  required this.symbol,
  this.imageUrl,
  required this.price,
  required this.change,
  required this.changePercentage,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(name: json['name'], imageUrl: json['image'], symbol: json['symbol'], price: json['current_price'], change: json['price_change_24h'], changePercentage: json['price_change_percentage_24h'],
    );
  }
}

List<Coin> coinList = [];