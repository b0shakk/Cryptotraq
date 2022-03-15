import 'package:flutter/material.dart';
import 'package:cryptotraq/components/coinCards.dart';
import 'package:http/http.dart' as http;
import 'package:cryptotraq/model/coin_model.dart';
import 'package:cryptotraq/model/source_model.dart';
import 'dart:convert';

class CryptoPrice extends StatefulWidget {
  @override
  State<CryptoPrice> createState() => _CryptoPriceState();
}

class _CryptoPriceState extends State<CryptoPrice> {
  // const CryptoPrice({Key? key}) : super(key: key);
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = jsonDecode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        print(coinList.first.name);
        print(coinList.last.name);
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Failed to load coins');
    }
    //return coinList;
  }

  @override
  void initState() {
    fetchCoin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coinList.length,
        itemBuilder: (context, index) {
          return CoinCard(
              name: coinList[index].name,
              symbol: coinList[index].symbol,
              price: coinList[index].price.toDouble(),
              change: coinList[index].change.toDouble(),
              changePercentage: coinList[index].changePercentage.toDouble());
        },
      ),
    );
  }
}
