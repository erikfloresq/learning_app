import 'package:flutter/material.dart';
import 'modal_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});

  final String title;

  @override
  State<ListPage> get createState => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const ListWidget(list: ['Jisoo', 'Lisa', 'Jenny', 'Rose']));
  }
}

class ListWidget extends StatelessWidget {
  final List<String> list;

  const ListWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(list[index]),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ModalPage()));
            },
          );
        });
  }
}
