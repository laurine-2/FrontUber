import 'package:flutter/material.dart';
import 'package:uber_front/components/icon_component.dart';
import 'package:uber_front/constants/app_icons.dart';
import 'package:uber_front/screens/splash_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(body: Container(

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 24 ),

                width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white, image: DecorationImage(image: AssetImage("assets/images/welcome_background.jpg"), fit: BoxFit.cover)),
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column (

                      children: [
                        Text("Uber", style: TextStyle(fontSize: 40, color: Colors.white),),
                        Text("Eats", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white))
                      ]
                  ),
                  Container(width: 100,
                    padding: EdgeInsets.symmetric(horizontal: 18 ),
                    height: 40,  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                    child: Center(child: Text("Ignorer", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.black),)),),
                ],
              ),
             ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height *0.2,
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 24 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Découvrez Uber Eats", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.black)),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: (){ Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()
                      )
                  );},
                  child: Container(width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 24 ),
                    height: 60,  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        Expanded(child: Text("Continuer", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.white),)),
                        IconComponent(icon: AppIcons.arrowRight, color: Colors.white, size: 24,)
                      ],
                    ),),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
