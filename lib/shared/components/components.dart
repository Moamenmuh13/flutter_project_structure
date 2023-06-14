import 'package:flutter/material.dart';

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
          icon: Icon(suffixIcon != null
              ? suffixIcon
              : null),
        ),
        border: const OutlineInputBorder(),
      ),
    );
Widget buildTasksItem(Map model
    ){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(radius: 40.0,
          child:Text(model['time']),
          backgroundColor: Colors.blue,) ,
        emptyArea(width: 20.0),
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model['title'] , style: TextStyle(fontSize: 20.0,color: Colors.black , fontWeight: FontWeight.bold),),
              Text(model['date'] , style: TextStyle(fontSize: 16.0, color: Colors.grey , fontWeight: FontWeight.bold),)
            ],
          ),
        )
      ],
    ),
  );
}