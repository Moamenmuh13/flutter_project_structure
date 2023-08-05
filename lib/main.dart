import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_structure/layouts/news_layout/news_layout.dart';
import 'package:flutter_project_structure/shared/bloc_observer.dart';
import 'package:flutter_project_structure/shared/network/remote/dio_helper.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  // Use cubits...
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.deepOrange,
            elevation: 20.0,
            type: BottomNavigationBarType.fixed,
          ),
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              backgroundColor: Colors.white,
              elevation: 0.0,
              backwardsCompatibility: false,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark))),
      home: const NewsLayout(),
    );
  }
}
