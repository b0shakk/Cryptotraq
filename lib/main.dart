import 'package:cryptotraq/components/google_sign_in.dart';
import 'package:cryptotraq/pages/demo_page.dart';
import 'package:cryptotraq/pages/news_page.dart';
import 'package:cryptotraq/pages/price_tracker_page.dart';
import 'package:cryptotraq/pages/sign_in_page.dart';
import 'package:cryptotraq/pages/sign_in_success_page.dart';
import 'package:flutter/material.dart';
import 'package:cryptotraq/pages/appBar.dart';
import 'package:cryptotraq/model/article_model.dart';
import 'package:cryptotraq/model/source_model.dart';
import 'package:cryptotraq/pages/news_page.dart';
import 'package:cryptotraq/pages/demo_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const Cryptotraq());
}

class Cryptotraq extends StatefulWidget {
  const Cryptotraq({Key? key}) : super(key: key);

  @override
  State<Cryptotraq> createState() => _CryptotraqState();
}

class _CryptotraqState extends State<Cryptotraq> {
  int index = 0;
  final screens = [
    NewsPage(),
    CryptoPrice(),
    SignInPage(),
    CustomPage(),
  ];

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          title: 'Cryptotraq',
          home: SignInSuccess(),
        ),
      );

  
}


