import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/shared/components/components.dart';
import 'package:flutter_project_structure/shared/cubit/cubit.dart';
import 'package:flutter_project_structure/shared/cubit/states.dart';
import 'package:intl/intl.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({super.key}) {
  }




  var scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();


  var titleController = TextEditingController();
  var dateController = TextEditingController();
  var timeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit()..createDatabase(),
        child: BlocConsumer<AppCubit , AppStates>(
          listener: (context, state) {
            if (state is AppInsertIntoFromDatabaseState){
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              key: scaffoldKey,
              appBar: AppBar(title: Text(cubit.screenName[cubit.currentIndex])),
              body: ConditionalBuilder(
                  condition: state is! AppGetDataFromDatabaseLoadingState,
                  builder: (context) => cubit.screens[cubit.currentIndex],
                  fallback: (context) => Center(child: CircularProgressIndicator()))
              ,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (cubit.isBottomSheetShown) {
                    if (formKey.currentState!.validate()) {
                      cubit.insertToDatabase(
                        titleController.text,
                        dateController.text,
                        timeController.text,
                      );
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
                                            lastDate: DateTime.parse(
                                                '2023-07-15'))
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
                      cubit.changeFabBtnIcon(isShow: false, iconData: Icons.edit);
                    });
                    cubit.changeFabBtnIcon(isShow: true, iconData: Icons.add);
                  }
                },
                child: Icon(cubit.fabIcon),
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  cubit.changeBottomNav(index) ;
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: "Tasks"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.done), label: "Done"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive), label: "Archive"),
                ],
              ),

            );
          },
        )

    );
  }

}