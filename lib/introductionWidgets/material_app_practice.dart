import 'package:flutter/material.dart';

class MaterialAppPractice extends StatelessWidget {
  const MaterialAppPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
          body: Center(
              child: Column(
            children: [
              MyButton(),
              Text('Demo body'),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {print('onTap demo')},
      child: Container(
        height: 50,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.lightGreen[500]),
        child: Center(
          child: MyLiveButton(),
        ),
      ),
    );
  }
}

class MyLiveButton extends StatefulWidget {
  @override
  State<MyLiveButton> createState() => _MyLiveButtonState();
}

class _MyLiveButtonState extends State<MyLiveButton> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterIncrementor(onPressed: increment),
        SizedBox(
          width: 16,
        ),
        CounterDisplay(
          count: _counter,
        )
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Counter: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Increment'));
  }
}
