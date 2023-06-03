import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

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
           const SizedBox(height: 20.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                SizedBox(
                  width: 60.0 ,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Mirage Apex legend online",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)

                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
              ],),
            ),
            const SizedBox(height: 20.0,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical
                , child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://i.redd.it/xl3ihex88at31.jpg")),
                          Padding(
                            padding: EdgeInsetsDirectional.only(bottom: 2.0 , end : 2.0),
                            child: CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mirage", style: TextStyle(color: Colors.black) , maxLines: 1 , overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                const Expanded(child:
                                Text(
                                  "Welcome to Apex legend",
                                  style: TextStyle(color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                const Text("12:54 PM", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0,),
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
