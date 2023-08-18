import 'package:gym_demo/bmiCalculator.dart';
import 'package:gym_demo/onboardingPage.dart';
import 'package:gym_demo/splashscreen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/splashscreen',
      routes:{
         '/homepage': (context)=> MyHomePage(),

        '/splashscreen': (context)=>BmiCalculator(),
      },
    );
  }
}

