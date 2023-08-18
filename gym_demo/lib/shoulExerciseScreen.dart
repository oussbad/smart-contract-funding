import 'package:flutter/material.dart';

class shoulExerciseScreen extends StatefulWidget {
  @override
  _shoulExerciseScreenState createState() => _shoulExerciseScreenState();
}

class _shoulExerciseScreenState extends State<shoulExerciseScreen> {
  List<String> _gifs = [  'assets/gifs/shoul/shoul1.gif','assets/gifs/shoul/shoul2.gif','assets/gifs/shoul/shoul3.gif','assets/gifs/shoul/shoul4.gif','assets/gifs/shoul/shoul5.gif','assets/gifs/shoul/shoul6.gif','assets/gifs/shoul/shoul7.gif','assets/gifs/shoul/shoul8.gif','assets/gifs/shoul/shoul9.gif','assets/gifs/shoul/shoul10.gif','assets/gifs/shoul/shoul11.gif','assets/gifs/shoul/shoul12.gif','assets/gifs/shoul/shoul13.gif','assets/gifs/shoul/shoul14.gif','assets/gifs/shoul/shoul15.gif','assets/gifs/shoul/shoul16.gif','assets/gifs/shoul/shoul17.gif','assets/gifs/shoul/shoul18.gif','assets/gifs/shoul/shoul19.gif','assets/gifs/shoul/shoul20.gif','assets/gifs/shoul/shoul21.gif','assets/gifs/shoul/shoul22.gif','assets/gifs/shoul/shoul23.gif','assets/gifs/shoul/shoul24.gif','assets/gifs/shoul/shoul25.gif',  ];

  List<String> _exercises = [    'Exercise 1',    'Exercise 2',    'Exercise 3',    'Exercise 4','Exercise 5' ,'Exercise 6' ,'Exercise 7' ,'Exercise 8' ,'Exercise 9' ,'Exercise 10' ,'Exercise 11' ,'Exercise 12' ,'Exercise 13' ,'Exercise 14' ,'Exercise 15' ,'Exercise 16' ,'Exercise 17' ,'Exercise 18' ,'Exercise 19' ,'Exercise 20' ,'Exercise 21' ,'Exercise 22','Exercise 23','Exercise 24','Exercise 25' ];

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
