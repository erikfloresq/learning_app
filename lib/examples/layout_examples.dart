import 'package:flutter/material.dart';

class LayoutExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListIdol(),
    ));
  }
}

class ListIdol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _tile('Demo', 'subtitle', Icons.theater_comedy),
        _tile('Demo', 'subtitle', Icons.theater_comedy),
        _tile('Demo', 'subtitle', Icons.theater_comedy),
      ],
    );
  }

  ListTile _tile(String tile, String subtitle, IconData icon) {
    return ListTile(
      title: Text(tile),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}

class GridIdol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildGrid();
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 200,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: _buildGridTileList(4),
      );

  List<Container> _buildGridTileList(int count) {
    return List.generate(count, (index) {
      return Container(
        child: Image.asset('images/pic$index.jpg'),
      );
    });
  }
}

/// Row of idols
class Idols extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset('images/jisoo.jpeg')),
        Expanded(child: Image.asset('images/jennie.jpg')),
        Expanded(flex: 2, child: Image.asset('images/lisa.jpg')),
        Expanded(child: Image.asset('images/rose.jpg')),
      ],
    );
  }
}

class Card extends StatelessWidget {
  const Card({required this.name, required this.photo, super.key});

  final String name;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 16, color: Colors.black45),
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset(
          'images/$photo',
          width: 50,
          height: 50,
        )
      ],
    );
  }
}

class PavlovaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          child: SizedBox(
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Strawberry Pavlova',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Text Demo Text Demo Text Demo Text Demo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Raitings(),
                Iconographic()
              ],
            ),
          ),
        ),
        Expanded(child: Image.asset('images/jisoo.jpeg'))
      ],
    );
  }
}

class Raitings extends StatelessWidget {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
  );

  Raitings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        Text('170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20))
      ],
    );
  }
}

class Iconographic extends StatelessWidget {
  static const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2);

  final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.kitchen,
                  color: Colors.green[500],
                ),
                const Text('PREP'),
                const Text('25 min')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.green[500],
                ),
                const Text('COOK'),
                const Text('1 hr')
              ],
            )
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return iconList;
  }
}
