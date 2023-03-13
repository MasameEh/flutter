

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first/shared/components/components.dart';


import '../../layout/todo_app/cubit/cubit.dart';
import '../../layout/todo_app/cubit/states.dart';
import '../../shared/components/constants.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {

     return BlocConsumer<AppCubit,AppStates>(
       listener:(context, state) {} ,
       builder: (context, state) {
         var tasks = AppCubit
             .get(context)
             .newTasks;
         return ConditionalBuilder(
           condition: tasks.isNotEmpty ,
           builder: (context) => ListView.separated(
             itemBuilder: (context, index) => buildTaskItem(tasks[index], context),
             separatorBuilder: (context, index) =>
                 Container(
                   height: 1.0,
                   color: Colors.grey[300],
                 ),
             itemCount: tasks.length,
           ),
           fallback: (context) => Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: const [
                 Icon(
                     Icons.menu,
                 size: 90.0,
                   color: Colors.black26,
                 ),
                 Text('No Tasks yet, Please Add Some Tasks',
                     style:TextStyle(
                       fontSize: 16.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.black38,
                     ),
                 ),
               ]
         ),
           ),

         );
       },
     );
  }
}
