import 'package:flutter/material.dart';

class AbsExerciseScreen extends StatefulWidget {
  @override
  _AbsExerciseScreenState createState() => _AbsExerciseScreenState();
}

class _AbsExerciseScreenState extends State<AbsExerciseScreen> {
  List<String> _gifs = [        'assets/gifs/abs/abs1.gif','assets/gifs/abs/abs2.gif','assets/gifs/abs/abs3.gif','assets/gifs/abs/abs4.gif','assets/gifs/abs/abs5.gif','assets/gifs/abs/abs6.gif','assets/gifs/abs/abs7.gif','assets/gifs/abs/abs8.gif','assets/gifs/abs/abs9.gif','assets/gifs/abs/abs10.gif','assets/gifs/abs/abs11.gif','assets/gifs/abs/abs12.gif','assets/gifs/abs/abs13.gif', 'assets/gifs/abs/abs14.gif',   ];

  List<String> _exercises = [    'Exercise 1',    'Exercise 2',    'Exercise 3',    'Exercise 4','Exercise 5' ,'Exercise 6' ,'Exercise 7' ,'Exercise 8' ,'Exercise 9' ,'Exercise 10' ,'Exercise 11' ,'Exercise 12' ,'Exercise 13' ,'Exercise 14' ];

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
