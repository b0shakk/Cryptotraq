import 'package:flutter/material.dart';
import 'package:cryptotraq/pages/price_tracker_page.dart';

class CoinCard extends StatelessWidget {
  String name;
  String symbol;
  String? imageUrl;
  double price;
  double change;
  double changePercentage;
  
  CoinCard({ 
  required this.name,
  required this.symbol,
  this.imageUrl,
  required this.price,
  required this.change,
  required this.changePercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10, left:10, right:10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500]!,
              offset: Offset(3, 3),
              blurRadius: 10,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-3, -3),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500]!,
                        offset: Offset(2, 2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2, -2),
                        blurRadius: 10,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  height: 60,
                  width: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: imageUrl!=null?Image.network(imageUrl!):null,
                  ),
                  ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      symbol,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price.toDouble().toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    change.toDouble().toStringAsFixed(4),
                    style: TextStyle(
                      color: change.toDouble()<0 ? Colors.red: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    changePercentage.toDouble().toStringAsFixed(4) +'%',
                    style: TextStyle(
                      color: changePercentage.toDouble()<0 ? Colors.red: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}