import 'package:flutter/material.dart';
import 'package:flutter_project_structure/layouts/home_layout.dart';

import 'modules/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: prefer_const_constructors
    return  MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeLayout());
  }
}
