import 'package:flutter/material.dart';

class legExerciseScreen extends StatefulWidget {
  @override
  _legExerciseScreenState createState() => _legExerciseScreenState();
}

class _legExerciseScreenState extends State<legExerciseScreen> {
  List<String> _gifs = [  'assets/gifs/leg/leg1.gif' , 'assets/gifs/leg/leg2.gif' ,'assets/gifs/leg/leg3.gif' ,'assets/gifs/leg/leg4.gif' ,'assets/gifs/leg/leg5.gif' ,'assets/gifs/leg/leg6.gif' ,'assets/gifs/leg/leg7.gif' ,'assets/gifs/leg/leg8.gif' ,'assets/gifs/leg/leg9.gif' ,'assets/gifs/leg/leg10.gif' ,'assets/gifs/leg/leg11.gif' ,'assets/gifs/leg/leg12.gif' ,];

  List<String> _exercises = [    'Exercise 1',    'Exercise 2',    'Exercise 3',    'Exercise 4','Exercise 5' ,'Exercise 6' ,'Exercise 7' ,'Exercise 8' ,'Exercise 9' ,'Exercise 10' ,'Exercise 11' ,'Exercise 12'  ];

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
