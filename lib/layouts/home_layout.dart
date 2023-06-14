import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_structure/modules/tasks/tasks_archive/archive_screen.dart';
import 'package:flutter_project_structure/modules/tasks/tasks_done/done_screen.dart';
import 'package:flutter_project_structure/shared/components/components.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/tasks/tasks_new/new_screen.dart';
import '../shared/components/constans.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchiveTasksScreen(),
  ];

  List<String> screenName = [
    "New Tasks",
    "Done Tasks",
    "Archive Tasks",
  ];

  Database? database;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  var titleController = TextEditingController();
  var dateController = TextEditingController();
  var timeController = TextEditingController();


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
      appBar: AppBar(title: Text(screenName[currentIndex])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBottomSheetShown) {
            if (formKey.currentState!.validate()) {
              insertToDatabase(
                titleController.text,
                dateController.text,
                timeController.text,
              ).then((value) {
                Navigator.pop(context);
                isBottomSheetShown = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              });
            }
          } else {
            scaffoldKey.currentState
                ?.showBottomSheet(
                  (context) =>
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          defaultTextForm(
                              controller: titleController,
                              label: "Task Name",
                              prefixIcon: Icons.title,
                              type: TextInputType.text,
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'You must enter Task Name';
                                } else {
                                  return null;
                                }
                              }),
                          emptyArea(height: 10.0),
                          defaultTextForm(
                              controller: timeController,
                              onTap: () {
                                showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now())
                                    .then((value) =>
                                {
                                  timeController.text =
                                      value!.format(context)
                                });
                              },
                              label: "Task Time",
                              prefixIcon: Icons.watch_later_outlined,
                              type: TextInputType.none,
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'You must enter Task Time';
                                } else {
                                  return null;
                                }
                              }),
                          emptyArea(height: 10.0),
                          defaultTextForm(
                              controller: dateController,
                              label: "Task Date",
                              prefixIcon: Icons.details,
                              type: TextInputType.none,
                              onTap: () {
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2023-07-15'))
                                    .then((value) =>
                                {
                                  dateController.text =
                                      DateFormat.yMMMd().format(value!)
                                });
                              },
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'You must enter Task Date';
                                } else {
                                  return null;
                                }
                              }),
                        ],
                      ),
                    ),
                  ),
              elevation: 20.0,
            )
                .closed
                .then((value) {
              isBottomSheetShown = false;
              setState(() {
                fabIcon = Icons.edit;
              });
            });
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "Archive"),
        ],
      ),
      body: ConditionalBuilder(
          condition: tasks.length > 0,
          builder: (context) => screens[currentIndex],
          fallback: (context) =>
            Center(child: CircularProgressIndicator()))
      ,
    );
  }

  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        // id integer
        // title String
        // date String
        // time String
        // status String

        database
            .execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {}).catchError((error) {});
      },
      onOpen: (database) {
        getTasksFromDatabase(database).then((value) =>
        {
          tasks = value
        });
      },
    );
  }

  Future<bool> insertToDatabase(String title, String time, String date) async {
    try {
      await database?.transaction((txn) async {
        await txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$time", "$date", "new")',
        );
      });
      return true; // Return true indicating successful insertion
    } catch (error) {
      return false; // Return false indicating failure
    }
  }

  Future<List<Map>> getTasksFromDatabase(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }
}
