import 'package:flutter/material.dart';

import '../../models/users.dart';



class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});

  List<UserModel> users = [
    UserModel(1, "Mu'men", "+2001122072514"),
    UserModel(2, "Java", "+2001122072514"),
    UserModel(3, "Kotlin", "+2001122072514"),
    UserModel(4, "Flutter", "+2001122072514"),
    UserModel(5, "Dart", "+2001122072514"),
    UserModel(6, "Android", "+2001122072514"),
    UserModel(7, "Kotlin", "+2001122072514"),
    UserModel(8, "Flutter", "+2001122072514"),
    UserModel(9, "Dart", "+2001122072514"),
    UserModel(10, "Android", "+2001122072514"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Users"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildUserItem(users[index]),
            separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 1.0,
                  color: Colors.grey[300],
                ),
            itemCount: users.length));
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
             CircleAvatar(
              radius: 30.0,
              child: Text(
                "${user.id}",
                style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    user.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    user.phone,
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      );

// 1. buildItem
// 2. buildList
// 3. addItemToList
}
