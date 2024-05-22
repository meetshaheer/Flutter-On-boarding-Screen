import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding/on-boarding%20Screen/onboarding.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => onboarding(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/spalsh screen logo.jpg",
                ),
                const FirstHeadingBold(),
                const SecondHeadingNormal()
              ],
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: BottmText(),
          )
        ],
      ),
    );
  }
}

class BottmText extends StatelessWidget {
  const BottmText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Connecting Lives, One Donation at a Time.",
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class SecondHeadingNormal extends StatelessWidget {
  const SecondHeadingNormal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "STREAM",
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          letterSpacing: 13),
    );
  }
}

class FirstHeadingBold extends StatelessWidget {
  const FirstHeadingBold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "RED",
      style: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.w900,
        letterSpacing: 36,
      ),
    );
  }
}
