import 'dart:ffi';

import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  final int result;
  final bool isMale;
  final int Age;

  BmiResult({
    required this.result,
    required this.Age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        title: Text(
          'BMI Result'
        ),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 220.0,
        ),
        child: Container(
          color: isMale ? Colors.blue[700] : Colors.teal,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('GENDER : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('BMI RESULT: $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('BMI RESULT: ${result > 18 && result < 25 ? 'Normal' : 'NOT NORMAL'}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('AGE : $Age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
