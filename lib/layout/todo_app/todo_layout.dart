import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_first/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:my_first/modules/done_tasks/done_tasks_screen.dart';
import 'package:my_first/modules/new_tasks/new_tasks_screen.dart';
import 'package:my_first/shared/components/components.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../shared/components/constants.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

// ignore: must_be_immutable
class HomeLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  HomeLayout({super.key});

  @override
  // void initState() {
  //   super.initState();
  //   createDatabase();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit()..createDatabase(),
        child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, AppStates state) {},
            builder: (BuildContext context, AppStates state) {
              AppCubit cubit = AppCubit.get(context);
              return Scaffold(
                key: scaffoldKey,
                appBar: AppBar(
                  title: Text(cubit.titles[cubit.currentIndex]),
                ),
                body: ConditionalBuilder(
                  condition: true,
                  builder: (context) => cubit.screens[cubit.currentIndex],
                  fallback: (context) =>
                      const Center(child: CircularProgressIndicator()),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    if (cubit.isBottomSheetShown)
                    {
                      if (formKey.currentState!.validate())
                      {
                        cubit.insertToDatabase(
                          title: titleController.text,
                          date: dateController.text,
                          time: timeController.text,
                        ).then((value) {
                            Navigator.pop(context);
                            clearText();

                          });
                      }
                    } else {
                      scaffoldKey.currentState
                          ?.showBottomSheet(
                            (context) => Container(
                              padding: const EdgeInsets.all(20.0),
                              color: Colors.grey[200],
                              child: Form(
                                key: formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    defaultFormField(
                                      controller: titleController,
                                      type: TextInputType.text,
                                      validate: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'title must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Title',
                                      prefix: Icons.title,
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    defaultFormField(
                                      controller: timeController,
                                      type: TextInputType.datetime,
                                      Readable: true,
                                      onTap: () async {
                                        TimeOfDay? pickedTime =
                                            await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        );
                                        // ignore: use_build_context_synchronously
                                        timeController.text = pickedTime
                                            ?.format(context) as String;
                                      },
                                      validate: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'time must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Time',
                                      prefix: Icons.watch_later_outlined,
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    defaultFormField(
                                      controller: dateController,
                                      type: TextInputType.datetime,
                                      Readable: true,
                                      onTap: () async {
                                        DateTime? pickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime.parse('2023-12-31'),
                                        );
                                        if (pickedDate != null) {
                                          print(
                                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                              DateFormat.yMMMMd('en_US')
                                                  .format(pickedDate);
                                          print(
                                              formattedDate); //formatted date output using intl package =>  2021-03-16
                                             dateController.text =
                                                 formattedDate; //set output date to TextFormField value.

                                        } else {
                                          print("Date is not selected");
                                        }
                                      },
                                      validate: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'date must not be empty';
                                        }
                                        return null;
                                      },
                                      label: 'Task Date',
                                      prefix: Icons.calendar_today,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .closed
                          .then((value) {
                        cubit.changeIcon(isShow: false, icon: Icons.edit);
                      });
                      cubit.changeIcon(isShow: true, icon: Icons.add);
                    }
                  },
                  child: Icon(cubit.fabIcon),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.ChangeIndex(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.menu),
                      label: 'Tasks',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.check_circle_outline),
                      label: 'Done',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.archive_outlined),
                      label: 'Archived',
                    ),
                  ],
                ),
              );
            }));
  }
  void clearText() {
    titleController.clear();
    timeController.clear();
    dateController.clear();
  }
}
