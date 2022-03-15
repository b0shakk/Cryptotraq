import 'package:cryptotraq/components/customListTile.dart';
import 'package:cryptotraq/pages/price_tracker_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptotraq/main.dart';
import 'package:cryptotraq/model/article_model.dart';
import 'package:cryptotraq/model/source_model.dart';
import 'package:cryptotraq/services/api_services.dart';
import 'package:cryptotraq/components/dropdownCategory.dart';
import 'package:cryptotraq/components/cardsList.dart';
import 'package:http/http.dart' as http;
import 'package:cryptotraq/model/coin_model.dart';
import 'dart:convert';
import 'package:cryptotraq/components/coinCards.dart';
import 'package:cryptotraq/pages/price_tracker_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
              child: CupertinoSearchTextField(
                onChanged: (value) {
                  
                },
              ),
            ),
            
            SizedBox(
              height: 350,
              child: CardsList()),
          
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
          //   child: CryptoPrice(),
          // ),
          ],
        ),
        
      ),

    );
  }
}
