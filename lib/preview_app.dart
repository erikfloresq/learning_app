import 'package:flutter/material.dart';
import 'examples/layout_examples.dart';

class PreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreviewApp',
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset('images/bp_logo.png', width: 200, height: 100),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: LayoutExamples(),
      ),
    );
  }
}
