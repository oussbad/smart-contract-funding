import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
int currentindex =0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        "BMI Calculator",
        style: TextStyle(color: Colors.black),
      ),
        elevation: 0.0,
        backgroundColor: Color(0xfffafafa),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          ),
        ],
      ),

      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(12),
            child: Column(
              children: [

              ],
            ),
          ),
      ),
    );
  }
  void changeIndex(int index){
setState(() {
currentindex=index ;
});
  }

  Widget radioButton(String value , Color color , int index  ){
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.black87,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return Expanded(
     child: Container(

       child: TextButton(
         onPressed: () {},
         style: flatButtonStyle,
         child: Text(
           "some text",
           style: TextStyle(color: Colors.white),
         ),
       ),
     )
 );
  }
}
