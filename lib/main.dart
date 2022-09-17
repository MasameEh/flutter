import 'package:flutter/material.dart';
import 'package:my_first/layout/home_layout.dart';
import 'package:my_first/modules/bmi/BMI_screen.dart';
import 'package:my_first/messenger_with_list.dart';
import 'package:my_first/modules/bmi/result_screen.dart';
import 'loG_In.dart';
import 'messenger_screen.dart';





void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout() ,
    );
  }
}


