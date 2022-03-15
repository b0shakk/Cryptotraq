import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cryptotraq/components/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 50),
    
              ),
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text('Sign up with Google'),
                onPressed: () {
                  debugPrint('signin try');
                  final provider= Provider.of<GoogleSignInProvider>(context,listen: false);
    
                  provider.googleLogin();   
    
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 50),
    
              ),
                icon: FaIcon(FontAwesomeIcons.google),
                label: Text('logout'),
                onPressed: () {
                  debugPrint('signin try');
                  final provider= Provider.of<GoogleSignInProvider>(context,listen: false);
                  provider.logOut();      
              },
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}