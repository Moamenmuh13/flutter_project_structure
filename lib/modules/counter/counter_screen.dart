import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/modules/counter/cubit/cubit.dart';
import 'package:flutter_project_structure/modules/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter App"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    color: Colors.green,
                    height: 90.0,
                    child: const Text(
                      "+",
                      style: TextStyle(fontSize: 50.0),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: const TextStyle(fontSize: 50.0),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  MaterialButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    color: Colors.red[500],
                    height: 90.0,
                    child: const Text(
                      "-",
                      style: TextStyle(fontSize: 50.0),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
