

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/todo_app/cubit/cubit.dart';
import '../../layout/todo_app/cubit/states.dart';
import '../../shared/components/components.dart';


class DoneTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener:(context, state) {} ,
      builder: (context, state) {
        var tasks = AppCubit
            .get(context)
            .doneTasks;
        return tasksBuilder(
            tasks: tasks,
        );
      },
    );
  }
}
