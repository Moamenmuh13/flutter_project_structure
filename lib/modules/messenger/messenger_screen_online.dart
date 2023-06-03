import 'package:flutter/material.dart';

class MessengerScreenOnline extends StatelessWidget {
  const MessengerScreenOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:
                  NetworkImage("https://i.redd.it/xl3ihex88at31.jpg"),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text("Chats", style: TextStyle(color: Colors.black))
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16.0,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[200]),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [Icon(Icons.search), Text("Search")],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 120.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10.0,
                    ),
                    itemCount: 9,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 10.0,
              ),
               ListView.separated(
                 shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => buildChatItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 20.0,
                        ),
                    itemCount: 10,
                    scrollDirection: Axis.vertical),
            ],
          ),
        ),
      ),
    );
  }
}
// design ur ticket of listView

Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    NetworkImage("https://i.redd.it/xl3ihex88at31.jpg")),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 2.0, end: 2.0),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Mirage",
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Text(
                    "Welcome to Apex legend",
                    style: TextStyle(color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 5.0,
                      height: 5.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                  ),
                  const Text(
                    "12:54 PM",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );

Widget buildStoryItem() => Row(children: [
      SizedBox(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage("https://i.redd.it/xl3ihex88at31.jpg")),
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 2.0, end: 2.0),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text("Mirage Apex legend online",
                maxLines: 2, overflow: TextOverflow.ellipsis)
          ],
        ),
      ),
    ]);
