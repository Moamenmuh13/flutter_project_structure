import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/layouts/news_layout/cubit/states.dart';
import 'package:flutter_project_structure/modules/news/business/business_screen.dart';
import 'package:flutter_project_structure/modules/news/science/science_screen.dart';
import 'package:flutter_project_structure/modules/news/setting/setting_screen.dart';
import 'package:flutter_project_structure/modules/news/sports/sports_screen.dart';

class NewsAppCubit extends Cubit<NewsAppStates> {
  NewsAppCubit() : super(NewsAppInitialState());

  static NewsAppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomNavItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.business), label: "Business"),
    const BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Sports"),
    const BottomNavigationBarItem(icon: Icon(Icons.science), label: "Science"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: "Settings"),
  ];

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    const SettingScreen(),
  ];

  List<String> screenName = [
    "Sports Screen"
        "Science Screen"
        "Business Screen"
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(NewsAppBottomNavState());
  }
}
