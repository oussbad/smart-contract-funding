
import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () =>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(

                child: Image.asset('assets/gifs/firstscreen.gif',
                  fit: BoxFit.cover, ),
          ),
          ),
        ],
      )




    );
  }
}
