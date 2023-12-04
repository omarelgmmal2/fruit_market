import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/onboarding/presention/view.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff69A03A),
      body: Column(
        children: [
          const Spacer(),
          FadeInDownBig(
            child: const Text(
              "Fruit Market",
              style: TextStyle(
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            "assets/images/splash.png",
          ),
        ],
      ),
    );
  }
}
