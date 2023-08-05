import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/layouts/news_layout/cubit/cubit.dart';
import 'package:flutter_project_structure/layouts/news_layout/cubit/states.dart';

import '../../shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsAppCubit(),
      child: BlocConsumer<NewsAppCubit, NewsAppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsAppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("News App"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (value) {
                cubit.changeBottomNav(value);
              },
              items: cubit.bottomNavItem,
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  DioHelper.getData(url: 'v2/top-headlines?', query: {
                    'country': 'us',
                    'category': 'business',
                    'apiKey': '5ca9cff249724442bc8509e066d58122',
                  }).then((value) {
                    print(value?.data['articles']);
                  }).catchError((onError) {
                    print(onError.toString());
                  });
                },
                child: Icon(Icons.get_app)),
          );
        },
        // appBar: ,
      ),
    );
  }
}
