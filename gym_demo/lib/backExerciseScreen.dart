import 'package:flutter/material.dart';

class BackExerciseScreen extends StatefulWidget {
  @override
  _BackExerciseScreenState createState() => _BackExerciseScreenState();
}

class _BackExerciseScreenState extends State<BackExerciseScreen> {
  List<String> _gifs = [  'assets/gifs/back/back1.gif' , 'assets/gifs/back/back2.gif' , 'assets/gifs/back/back4.gif' , 'assets/gifs/back/back5.gif' , 'assets/gifs/back/back6.gif' , 'assets/gifs/back/back7.gif' , 'assets/gifs/back/back8.gif' , 'assets/gifs/back/back9.gif' , 'assets/gifs/back/back10.gif' , 'assets/gifs/back/back11.gif' , 'assets/gifs/back/back12.gif' , 'assets/gifs/back/back13.gif' , 'assets/gifs/back/back14.gif' , 'assets/gifs/back/back15.gif' , 'assets/gifs/back/back16.gif' , 'assets/gifs/back/back17.gif' , 'assets/gifs/back/back18.gif' , 'assets/gifs/back/back19.gif' , 'assets/gifs/back/back20.gif' , 'assets/gifs/back/back21.gif' , 'assets/gifs/back/back22.gif' ,  ];

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
