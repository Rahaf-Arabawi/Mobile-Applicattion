import 'package:flutter/material.dart';
import 'package:login_signup/splash_screen.dart';
import 'package:login_signup/login.dart';   
import 'package:login_signup/signup.dart'; 

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),    
        '/signup': (context) => SignupPage(),   
      },
    );
  }
}
