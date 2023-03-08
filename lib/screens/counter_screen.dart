import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void clear() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButton(
        increaseFn: increase,
        decreaseFn: decrease,
        clearFn: clear,
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function clearFn;
  const CustomFloatingButton({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.clearFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      FloatingActionButton(
          onPressed: () => decreaseFn(), child: const Icon(Icons.remove)),
      FloatingActionButton(
          onPressed: () => clearFn(), child: const Icon(Icons.deselect)),
      FloatingActionButton(
          onPressed: () => increaseFn(), child: const Icon(Icons.add)),
    ]);
  }
}
