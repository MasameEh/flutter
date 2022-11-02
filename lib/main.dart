import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_first/layout/home_layout.dart';
import 'package:my_first/modules/bmi/BMI_screen.dart';
import 'package:my_first/modules/messenger/messenger_with_list.dart';
import 'package:my_first/modules/bmi/result_screen.dart';
import 'package:my_first/shared/bloc_observer.dart';
import 'modules/login/loG_In.dart';
import 'modules/messenger/messenger_screen.dart';





void main() async{
  Bloc.observer = MyBlocObserver();
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


