import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class ArchiveTasksScreen extends StatelessWidget {
  const ArchiveTasksScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var  tasks = AppCubit.get(context).archiveTasks;
        return ListView.separated(
            itemBuilder: (context, index) => buildTasksItem(tasks[index] , context),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: tasks.length);
      },
    );
  }
}
