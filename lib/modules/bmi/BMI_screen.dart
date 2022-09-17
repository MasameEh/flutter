
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_first/modules/bmi/result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  double Weight = 40.0;
  int Age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          ),
        ),
      body: Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                            color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 20.0,
                          ),
                          child: Column(
                            children:
                            [
                              Icon(Icons.male,
                              size: 80.0 ,
                              ),
                              Text('MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0 ,
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: !isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 20.0,
                          ),
                          child: Column(
                            children:
                            [
                              Icon(Icons.female,
                                size: 80.0 ,
                              ),
                              Text('FEMALE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0 ,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text('HEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:
                      [
                        Text('${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        Text('CM',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text('WEIGHT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0 ,
                            ),
                          ),
                          Text('${Weight.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    Weight--;
                                  });
                                  },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    Weight++;
                                  });
                                  },
                                heroTag: 'weigth+',
                                mini: true,
                                child: Icon(
                                  Icons.add
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0  ,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text('AGE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0 ,
                            ),
                          ),
                          Text('${Age}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0 ,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    Age--;
                                  });

                                  },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:() {
                                  setState(() {
                                    Age++;
                                  });
                                  },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50.0 ,
            width: double.infinity,
            color: Colors.blue[700],
            child: MaterialButton(
              onPressed: ()
              {
                double result = Weight / pow(height / 100,2);
                print(result);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BmiResult(
                          Age: Age,
                          isMale: isMale,
                          result: result.round(),
                        ),
                    )
                );
            },
              child: Text('CALCULATE',
              style:TextStyle(
                color: Colors.white,
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
