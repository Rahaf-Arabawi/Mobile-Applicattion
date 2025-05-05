
import 'package:flutter/material.dart';
import 'package:login_signup/welcome.dart'; 

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset('images/logo.png'), 
      ),
    );
  }
}
