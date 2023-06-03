
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(Icons.menu),
        title: const Text("Flutter App"),
        actions: const [
          Icon((Icons.search)),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              textExample("title", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),
              textExample("title2", Colors.purple),

            ],
          ),
        ),
      ),
    );
  }

  Widget textExample(String title, Color color) {
    return Text(
      title,
      style: TextStyle(backgroundColor: color, fontSize: 25.0),
    );
  }
}
