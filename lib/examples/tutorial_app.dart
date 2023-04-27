import 'package:flutter/material.dart';

class TutorialApp extends StatelessWidget {
  TutorialApp({super.key});

  final Widget imageHeader = Image.asset(
    'images/lake.jpeg',
    width: 600,
    height: 200,
    fit: BoxFit.cover,
  );

  final Widget titleSection = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41')
      ],
    ),
  );

  final Widget textSection = Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ));

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonSection(color, Icons.call, 'CALL'),
        _buildButtonSection(color, Icons.near_me, 'ROUTE'),
        _buildButtonSection(color, Icons.share, 'SHARE')
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial app'),
        ),
        body: ListView(
          children: [imageHeader, titleSection, buttonSection, textSection],
        ),
      ),
    );
  }

  Widget _buildButtonSection(Color color, IconData icon, String label) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: color),
              ),
            )
          ],
        ),
      ],
    );
  }
}
