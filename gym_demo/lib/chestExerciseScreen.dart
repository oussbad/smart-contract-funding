import 'package:flutter/material.dart';

class ChestExerciseScreen extends StatefulWidget {
  @override
  _ChestExerciseScreenState createState() => _ChestExerciseScreenState();
}

class _ChestExerciseScreenState extends State<ChestExerciseScreen> {
  List<String> _gifs = [  'assets/gifs/chest/chest1.gif',  'assets/gifs/chest/chest2.gif', 'assets/gifs/chest/chest3.gif', 'assets/gifs/chest/chest4.gif', 'assets/gifs/chest/chest5.gif', 'assets/gifs/chest/chest6.gif', 'assets/gifs/chest/chest7.gif', 'assets/gifs/chest/chest8.gif', 'assets/gifs/chest/chest9.gif', 'assets/gifs/chest/chest10.gif', 'assets/gifs/chest/chest11.gif', 'assets/gifs/chest/chest12.gif', 'assets/gifs/chest/chest13.gif', 'assets/gifs/chest/chest14.gif', 'assets/gifs/chest/chest15.gif', 'assets/gifs/chest/chest16.gif', 'assets/gifs/chest/chest17.gif', 'assets/gifs/chest/chest18.gif', 'assets/gifs/chest/chest19.gif', 'assets/gifs/chest/chest20.gif', 'assets/gifs/chest/chest21.gif', 'assets/gifs/chest/chest22.gif','assets/gifs/chest/chest23.gif',     ];

  List<String> _exercises = [    'Exercise 1',    'Exercise 2',    'Exercise 3',    'Exercise 4','Exercise 5' ,'Exercise 6' ,'Exercise 7' ,'Exercise 8' ,'Exercise 9' ,'Exercise 10' ,'Exercise 11' ,'Exercise 12' ,'Exercise 13' ,'Exercise 14' ,'Exercise 15' ,'Exercise 16' ,'Exercise 17' ,'Exercise 18' ,'Exercise 19' ,'Exercise 20' ,'Exercise 21' ,'Exercise 22','Exercise 23' ];

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
