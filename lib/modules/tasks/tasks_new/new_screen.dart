import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/shared/components/components.dart';
import 'package:flutter_project_structure/shared/cubit/cubit.dart';
import 'package:flutter_project_structure/shared/cubit/states.dart';


class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var  tasks = AppCubit.get(context).tasks;
        return ListView.separated(
            itemBuilder: (context, index) => buildTasksItem(tasks[index]),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: tasks.length);
      },
    );
  }
}
