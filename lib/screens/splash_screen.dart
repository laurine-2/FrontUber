import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uber_front/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), (){ Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const WelcomeScreen()
      )
    );} );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.green,
      child: const Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Uber", style: TextStyle(fontSize: 65),),
          Text("Eats", style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold))
        ]
      )));
  }
}
