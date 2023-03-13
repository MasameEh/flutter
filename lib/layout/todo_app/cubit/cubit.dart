import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first/layout/todo_app/cubit/states.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../../modules/archived_tasks/archived_tasks_screen.dart';
import '../../../modules/done_tasks/done_tasks_screen.dart';
import '../../../modules/new_tasks/new_tasks_screen.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  static Database? database;
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];
  int currentIndex = 0;

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.add;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  // ignore: non_constant_identifier_names
  void ChangeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  Future<void> createDatabase() async {
    if (database != null) {
      print('database not null');
      return;
    } else {
      try {
        var databasesPath = await getDatabasesPath();
        String path = join(databasesPath, 'todo.db');
        openDatabase(path, version: 2,
            onCreate: (Database database, int version) async {
          print('database created');
          await database.execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, date TEXT NOT NULL, time TEXT NOT NULL, status TEXT NOT NULL)',
          );
        }, onOpen: (database) {
          getDataFromDatabase(database);
          print('database opened');
        }).then((value) {
          database = value;
          emit(AppCreateDatabasesState());
        });
      } catch (e) {
        print(e);
      }
    }
  }

 Future insertToDatabase({
    required String title,
    required String time,
    required String date,
  }) async {
   return await database?.transaction((txn)  async
   {
        txn.rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date","$time", "new")',
      ).then((value)
        {
        print('$value inserted successfully');
        emit(AppInsertDatabasesState());
        getDataFromDatabase(database);
      }).catchError((error) {
        print('ERROR when inserting New record ${error.toString()}');
      });
    });
  }

  void getDataFromDatabase(database) async {

    newTasks = [];
    doneTasks = [];
    archivedTasks = [];
    database?.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element) {
        if(element['status'] == 'new')
        {
          newTasks.add(element);
        }else if(element['status'] == 'done')
        {
          doneTasks.add(element);
        }else
        {
          archivedTasks.add(element);
        }
      });

      emit(AppGetDatabasesState());
    });
  }

 void updateData({
    required String status,
    required int id,
  }) async
  {
        await database?.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        [status, id ]
      ).then((value)
      {
        getDataFromDatabase(database);
        emit(AppUpdateDatabasesState());
      }
      );

  }

  void deleteData({
    required int id,
  }) async
  {
        await database?.rawDelete(
        'DELETE FROM tasks WHERE id = ?',
        [ id ]
      ).then((value)
      {
        getDataFromDatabase(database);
        emit(AppDeleteDatabasesState());
      }
      );
  }

  void changeIcon({
    required bool isShow,
    required IconData icon,
  }) {
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit(ChangeBottomSheetState());
  }
}
