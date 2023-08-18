import 'package:flutter/material.dart';

class ArmsExerciseScreen extends StatefulWidget {
  @override
  _ArmsExerciseScreenState createState() => _ArmsExerciseScreenState();
}

class _ArmsExerciseScreenState extends State<ArmsExerciseScreen> {
  List<String> _gifs = [  'assets/gifs/arms/arm1.gif',   'assets/gifs/arms/arm2.gif',   'assets/gifs/arms/arm3.gif',   'assets/gifs/arms/arm4.gif',   'assets/gifs/arms/arm5.gif' , 'assets/gifs/arms/arm6.gif',   'assets/gifs/arms/arm7.gif',   'assets/gifs/arms/arm8.gif',   'assets/gifs/arms/arm9.gif',   'assets/gifs/arms/arm10.gif',   'assets/gifs/arms/arm11.gif',   'assets/gifs/arms/arm12.gif',   'assets/gifs/arms/arm13.gif',   'assets/gifs/arms/arm14.gif',   'assets/gifs/arms/arm15.gif',   'assets/gifs/arms/arm16.gif',   'assets/gifs/arms/arm17.gif',   'assets/gifs/arms/arm18.gif',   'assets/gifs/arms/arm19.gif',   'assets/gifs/arms/arm20.gif',   'assets/gifs/arms/arm21.gif',   'assets/gifs/arms/arm22.gif',      ];

  List<String> _exercises = [    'Exercise 1',    'Exercise 2',    'Exercise 3',    'Exercise 4','Exercise 5' ,'Exercise 6' ,'Exercise 7' ,'Exercise 8' ,'Exercise 9' ,'Exercise 10' ,'Exercise 11' ,'Exercise 12' ,'Exercise 13' ,'Exercise 14' ,'Exercise 15' ,'Exercise 16' ,'Exercise 17' ,'Exercise 18' ,'Exercise 19' ,'Exercise 20' ,'Exercise 21' ,'Exercise 22' ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image.asset(
                _gifs[_currentIndex],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            child: Text(_exercises[_currentIndex]),
            alignment: Alignment.center,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: _previousGif,
                  child: Icon(Icons.arrow_back),
                ),
                TextButton(
                  onPressed: _nextGif,
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _previousGif() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _gifs.length;
    });
  }

  void _nextGif() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _gifs.length;
    });
  }
}
