import 'package:flutter/material.dart';      
import 'auth/compelet_information/view.dart';
import 'auth/login/view.dart';
import 'onboarding/presention/view.dart';
import 'splash/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
      ),
      title: 'Fruit Market',
      home: const OnBoardingView(),
    );
  }
}
