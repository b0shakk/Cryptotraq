import 'package:flutter/material.dart';
import 'package:cryptotraq/components/google_sign_in.dart';
import 'package:cryptotraq/pages/demo_page.dart';
import 'package:cryptotraq/pages/news_page.dart';
import 'package:cryptotraq/pages/price_tracker_page.dart';
import 'package:cryptotraq/pages/sign_in_page.dart';
import 'package:cryptotraq/pages/sign_in_success_page.dart';
import 'package:cryptotraq/pages/appBar.dart';
import 'package:cryptotraq/model/article_model.dart';
import 'package:cryptotraq/model/source_model.dart';
import 'package:cryptotraq/pages/news_page.dart';
import 'package:cryptotraq/pages/demo_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int index = 0;
  final screens = [
    NewsPage(),
    CryptoPrice(),
    SignInPage(),
    CustomPage(),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
            // CustomAppBar(appBar: AppBar()),
            appBar: CustomAppBar(appBar: AppBar()),
            body: screens[index],
            bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                  indicatorColor: Colors.blue.shade100,
                  labelTextStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
              child: NavigationBar(
                height: 60,
                backgroundColor: Colors.transparent,
                selectedIndex: index,
                onDestinationSelected: (index) =>
                    setState(() => this.index = index),
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.email_outlined), label: 'News'),
                  NavigationDestination(
                      icon: Icon(Icons.chat_bubble_outline),
                      label: 'Transactions'),
                  NavigationDestination(
                      icon: Icon(Icons.group_outlined), label: '3rd panel'),
                  NavigationDestination(
                      icon: Icon(Icons.email_outlined), label: 'Taxes'),
                ],
              ),
            ),
          );
  }
}