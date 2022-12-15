import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first/layout/todo_app/todo_layout.dart';
import 'package:my_first/modules/bmi/BMI_screen.dart';
import 'package:my_first/modules/messenger/messenger_with_list.dart';
import 'package:my_first/modules/bmi/result_screen.dart';
import 'package:my_first/shared/bloc_observer.dart';
import 'layout/news_app/news_layout.dart';
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
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme:IconThemeData(
            color: Colors.black,
          ) ,
          backwardsCompatibility: false,
          elevation: 0.0,
          toolbarTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
           statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: NewsLayout() ,
    );
  }
}


