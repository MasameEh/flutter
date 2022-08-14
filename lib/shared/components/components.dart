import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  required Function function,
  required String text,
  }) => Container(
    color: background,
    width: width,
    child: MaterialButton(
    onPressed: ()
      {
        function();
      },
      child:  Text(
      text,
      style: TextStyle(
      fontSize: 20.0,
      color: Colors.white,
        ),
      ),
    ),
  );



