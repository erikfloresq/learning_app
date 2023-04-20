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
          child: Text('Hola!'),
        ),
      ),
    );
  }
}
