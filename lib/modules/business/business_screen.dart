import 'package:flutter/cupertino.dart';

class BusinessScreen extends StatelessWidget
{
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return const Center(
       child: Text('Business Screen',
         style: TextStyle(
           fontSize: 20.0,
           fontWeight: FontWeight.bold,
         ),
       ),
   );
  }

}