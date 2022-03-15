import 'package:cryptotraq/pages/demo_page.dart';
import 'package:cryptotraq/pages/news_page.dart';
import 'package:cryptotraq/pages/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cryptotraq/pages/home_page.dart';

class SignInSuccess extends StatelessWidget {
  const SignInSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold( 
    body: StreamBuilder(
      
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }
      else if(snapshot.hasError) {
        return Center(child: Text('Something is wrong'));
      }
      else if(snapshot.hasData) {
        debugPrint('success');
        return Home();
      }
      else{
    return Home();
      }
    },
    ),
    );
    
  
}