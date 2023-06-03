import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0 ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Counter App"),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              setState(() {
                counter++;
              });
            } , color: Colors.green, height: 90.0,child: const Text("+" , style: TextStyle(fontSize: 50.0),),) ,
            const SizedBox(width: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("${counter}" , style: const TextStyle(fontSize: 50.0),),
            ),
            const SizedBox(width: 20.0),
            MaterialButton(onPressed: (){
              setState(() {
                if(counter > 0){
                  counter--;
                }else{
                  print("No u can't");
                }
              });
            } , color: Colors.red[500], height: 90.0,child: const Text("-" , style: TextStyle(fontSize: 50.0),),) ,
          ],
        ),
      ),
    );
  }
}
