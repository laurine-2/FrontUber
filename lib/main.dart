import 'package:flutter/material.dart';
import 'package:uber_front/screens/splash_screen.dart';
import 'package:uber_front/theme/main_theme.dart';
import 'theme/main_theme.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber App',
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
      //),
      home: SplashScreen(),
      theme: mainTheme,
    );
  }
}

