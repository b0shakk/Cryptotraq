import 'package:flutter/material.dart';
import 'package:cryptotraq/services/api_services.dart';
import 'package:cryptotraq/model/article_model.dart';
import 'package:cryptotraq/model/source_model.dart';
import 'package:cryptotraq/components/customListTile.dart';

class CardsList extends StatefulWidget {
  const CardsList({ Key? key }) : super(key: key);

  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;

            return ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const PageScrollPhysics(),
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index],context)
            );
          }
          return Center(
            
            child: CircularProgressIndicator(),
          );
        },
      );
  }
}