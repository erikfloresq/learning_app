import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: [
            const IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Navigation menu',
                onPressed: null),
            Expanded(
              child: title,
            ),
            const IconButton(
                icon: Icon(Icons.search), tooltip: 'Search', onPressed: null)
          ],
        ));
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          CustomAppBar(
              title: Text(
            'Example Title',
            style: Theme.of(context).primaryTextTheme.titleLarge,
          )),
          const Expanded(
            child: Center(
              child: Text('Hello World!'),
            ),
          )
        ],
      ),
    );
  }
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: SafeArea(
        child: MyScaffold(),
      ),
    );
  }
}
