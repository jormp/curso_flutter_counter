import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Número de clicks:",
              style: fontSize30,
            ),
            Text(
              "$counter",
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                counter--;
              });
            }),
        FloatingActionButton(
            child: const Icon(Icons.deselect),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            }),
        FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            }),
      ]),
    );
  }
}
