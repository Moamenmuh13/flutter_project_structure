import 'package:flutter/material.dart';
import 'package:flutter_project_structure/modules/tasks/tasks_archive/archive_screen.dart';
import 'package:flutter_project_structure/modules/tasks/tasks_done/done_screen.dart';
import 'package:flutter_project_structure/shared/components/components.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/tasks/tasks_new/new_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int screenIndex = 0;

  Widget? tasksScreens(currentIndex) {
    switch (currentIndex) {
      case 0:
        return const NewTasksScreen();
      case 1:
        return const DoneTasksScreen();
      case 2:
        return const ArchiveTasksScreen();
    }
    return null;
  }

  List<String> screenName = [
    "New Tasks",
    "Done Tasks",
    "Archive Tasks",
  ];

  Database? database;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  var titleController = TextEditingController();
  var detailsController = TextEditingController();
  var timeController = TextEditingController();
  var statusController = TextEditingController();

  @override
  void initState() {
    super.initState();
    createDatabase();
    // Get a location using getDatabasesPath
    // var databasesPath = await getDatabasesPath();
    // String path = join(databasesPath, 'todo.db');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text(screenName[screenIndex])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            Navigator.pop(context);
            isBottomSheetShown = false;
            setState(() {
              fabIcon = Icons.edit;
            });
          } else {
            scaffoldKey.currentState?.showBottomSheet((context) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      defaultTextForm(
                        controller: titleController,
                        label: "Title",
                        prefixIcon: Icons.title,
                        type: TextInputType.text,
                      ),
                      emptyArea(height: 10.0),
                      defaultTextForm(
                        controller: detailsController,
                        label: "Detials",
                        prefixIcon: Icons.details,
                        type: TextInputType.text,
                      ),
                      emptyArea(height: 10.0),
                      defaultTextForm(
                        controller: timeController,
                        onTap: (){
                          showTimePicker(context: context, initialTime: TimeOfDay.now());
                        },
                        label: "Time",
                        prefixIcon: Icons.watch_later_outlined,
                        type: TextInputType.datetime,
                      ),
                      emptyArea(height: 10.0),
                      defaultTextForm(
                        controller: statusController,
                        label: "Status",
                        prefixIcon: Icons.info,
                        type: TextInputType.text,
                      ),
                      emptyArea(height: 10.0),
                    ],
                  ),
                ));
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
          // insertToDatabase();
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: screenIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            screenIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "Archive"),
        ],
      ),
      body: tasksScreens(screenIndex),
    );
  }

  void createDatabase() {
    var database =
        openDatabase('todo.db', version: 1, onCreate: (database, version) {
      database
          .execute(
              'CREATE TABLE tasks (id Integer PRIMARY KEY , title TEXT , data TEXT , time TEXT , status TEXT)')
          .then((value) => {print("database Created")})
          .catchError((error) {
        print("Error when create Tasks database ${error.toString()}");
      });
    }, onOpen: (database) {
      print("database opened");
    });
  }

// void insertToDatabase() {
//   var transaction = Database.transaction((txn){
//      return txn.rawInsert('INSERT INFO tasks(title , date , time , status) VALUES ("First" , "13/9" , "today" , "new")').then((value) => {
//       print(value)
//     }).catchError((onError){
//       print(onError);
//     });
//   });
// }
}
