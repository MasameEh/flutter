import 'package:flutter/material.dart';

class ScienceScreen extends StatelessWidget
{
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Science Screen',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}