import 'package:flutter/material.dart';
import 'package:flutter_project_structure/shared/components/components.dart';

import '../../../shared/components/constans.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => buildTasksItem(tasks[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: tasks.length);
  }
}
