import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_structure/shared/cubit/cubit.dart';

Widget emptyArea({double height = 0.0, double width = 0.0}) => SizedBox(
  height: height,
  width: width,
);

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  required VoidCallback function,
  required String title,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(radius)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? title.toUpperCase() : title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

Widget defaultTextForm({
  required TextEditingController controller,
  required String label,
  required IconData prefixIcon,
  required TextInputType type,
  String? Function(String?)? validate, // Updated function signature
  IconData? suffixIcon,
  bool isPassword = false,
  VoidCallback? suffixPressed,
  Color? background,
  VoidCallback? onTap,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onChange,
}) =>
    TextFormField(
      validator: validate,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffixIcon),
        ),
        border: const OutlineInputBorder(),
      ),
    );
Widget buildTasksItem(Map model, context) {
  return Dismissible(
    key: Key(model['id'].toString()),
    onDismissed: (direction) {
      AppCubit.get(context).deleteTaskStatus(id: model['id']);
    },
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.blue,
            child: Text(model['time']),
          ),
          emptyArea(width: 20.0),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model['title'],
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  model['date'],
                  style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                AppCubit.get(context)
                    .updateTaskStatus(status: "done", id: model['id']);
              },
              icon: const Icon(Icons.check_box)),
          IconButton(
              onPressed: () {
                AppCubit.get(context)
                    .updateTaskStatus(status: "archive", id: model['id']);
              },
              icon: const Icon(Icons.archive)),
        ],
      ),
    ),
  );
}

Widget taskBuilder(List<Map> tasks) => ConditionalBuilder(
    condition: tasks.isNotEmpty,
    builder: (context) => ListView.separated(
        itemBuilder: (context, index) => buildTasksItem(tasks[index], context),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: tasks.length),
    fallback: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.menu,
                color: Colors.grey,
                size: 100.0,
              ),
              Text(
                "No Tasks yet please add some tasks",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              )
            ],
          ),
        ));