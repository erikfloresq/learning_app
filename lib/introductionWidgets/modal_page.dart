import 'package:flutter/material.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: const Image(image: AssetImage('images/jisoo.jpeg')),
    );
  }
}
