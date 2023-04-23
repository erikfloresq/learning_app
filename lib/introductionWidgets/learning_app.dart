import 'package:flutter/material.dart';
import 'list_page.dart';

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ListPage(title: 'Learning Flutter'),
    );
  }
}