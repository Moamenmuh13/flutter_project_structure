import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
   bool isMale = true ;
   double height = 150.0 ;
   int age = 18 ;
   int weight = 40 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: (TextStyle(
            fontSize: 24.0,
          )),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMale ? Colors.blue : Colors.grey[400]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/male.png" ),
                          width: 90.0,
                          height: 90.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )
                      ],
                  ),
                ),
                    )),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false ;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:  !isMale ? Colors.pink : Colors.grey[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage("assets/images/female.png") ,
                          width: 90.0, height: 90.0, color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Female",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                            fontSize: 48.0, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 120.0,
                    max: 220.0,
                    onChanged: (value) {
                       setState(() {
                         height = value;
                       });
                    },
                    thumbColor: Colors.red,
                    inactiveColor: Colors.white12,
                    activeColor: Colors.white,
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                         Text(
                          "${weight}",
                          style: TextStyle(
                              fontSize: 48.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if(weight <= 40){}else{weight--;}
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if(weight >= 120){}else{weight++;}
                                });
                              },
                              backgroundColor: Colors.green,
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                         Text(
                          "${age}",
                          style: TextStyle(
                              fontSize: 48.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (age <= 16){} else {age--;}
                                  });
                                },
                                backgroundColor: Colors.red,
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (age >= 60){} else {age++;}
                                });
                              },
                              backgroundColor: Colors.green,
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.pink),
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height/ 100,2);
                Navigator.push(
                    context,
                    MaterialPageRoute( builder: (context )=> BmiResultScreen(
                    result: result.round(), age: age, gender: isMale,
                    ) ));
              },
              child: const Text(
                "CALCULATOR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}


