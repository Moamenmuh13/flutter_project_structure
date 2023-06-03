import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final int result ;
  final int age ;
  final bool gender ;

  const BmiResultScreen({super.key, required this.result, required this.age, required this.gender});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "BMI Results"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${gender ? "Male" : "Female"} " , style: TextStyle(
              fontSize: 28.0
            ),),
            Text("Age : ${age}", style: TextStyle(
                fontSize: 28.0
            ), ),
            Text("BMI : $result" ,style: TextStyle(
                fontSize: 28.0
            ),),
          ],
        ),
      ),
    );
  }
}
