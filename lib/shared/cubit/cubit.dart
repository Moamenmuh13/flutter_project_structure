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

  List<Map> tasks = [];

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
        getTasksFromDatabase(database).then((value)  {
          tasks = value;
          print(value);
          emit(AppGetDataFromDatabaseState());
        });
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase(String title, String time, String date) async  {
       database.transaction((txn) async {
        await txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$time", "$date", "new")',
        ).then((value){
          print(value);
          emit(AppInsertIntoFromDatabaseState());
          getTasksFromDatabase(database).then((value)  {
            tasks = value;
            print(value);
            emit(AppGetDataFromDatabaseState());
          });
        }).catchError((onError){
          print(onError);
        });
      });
    }

  Future<List<Map>> getTasksFromDatabase(database) async {
    emit(AppGetDataFromDatabaseLoadingState());
    return await database.rawQuery('SELECT * FROM tasks');
  }


  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;
  void changeFabBtnIcon({required bool isShow, required IconData iconData}) {
    isBottomSheetShown = isShow;
    fabIcon = iconData;
    emit(AppChangeFabBtnState());
  }
}


