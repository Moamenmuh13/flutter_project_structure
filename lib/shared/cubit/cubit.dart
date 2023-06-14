import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../../modules/tasks/tasks_archive/archive_screen.dart';
import '../../modules/tasks/tasks_done/done_screen.dart';
import '../../modules/tasks/tasks_new/new_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  late Database database;

  List<Widget> screens = [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchiveTasksScreen(),
  ];

  List<String> screenName = [
    "New Tasks",
    "Done Tasks",
    "Archive Tasks",
  ];

  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archiveTasks = [];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {})
            .catchError((error) {});
      },
      onOpen: (database) {
        getTasksFromDatabase(database);
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase(String title, String time, String date) async {
    database.transaction((txn) async {
      await txn
          .rawInsert(
        'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$time", "$date", "new")',
      )
          .then((value) {
        print(value);
        emit(AppInsertIntoFromDatabaseState());
        getTasksFromDatabase(database);
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  void getTasksFromDatabase(database) {
    newTasks = [];
    doneTasks = [];
    archiveTasks = [];

    emit(AppGetDataFromDatabaseLoadingState());


    database.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element){
        if(element['status'] == 'new'){
          newTasks.add(element);
        }
        else if(element['status'] == 'done'){
          doneTasks.add(element);
        }
        else {
          archiveTasks.add(element);
        }
      });
      emit(AppGetDataFromDatabaseState());
    });
  }

  void updateTaskStatus({
    required String status,
    required int id,
  }) {
    // Update some record
    database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id]).then((value) {
          getTasksFromDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  void changeFabBtnIcon({required bool isShow, required IconData iconData}) {
    isBottomSheetShown = isShow;
    fabIcon = iconData;
    emit(AppChangeFabBtnState());
  }
}
