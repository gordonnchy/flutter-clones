import 'package:flutter/material.dart';

class ColorChangePage extends StatefulWidget {
  @override
  _ColorChangePageState createState() => _ColorChangePageState();
}

class _ColorChangePageState extends State<ColorChangePage> {
  List<Color> _colors = [
    Colors.purple,
    Colors.green,
    Colors.red,
    Colors.indigo,
    Colors.yellow,
    Colors.pink
  ];

  Color _backgroundColor = Colors.purple;

  Widget _buildColorWidget(color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor = color;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          child: CircleAvatar(
            backgroundColor: color,
            radius: 40,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        title: Icon(Icons.color_lens),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'Boom - Magic color change!',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: _colors
                      .map((color) => _buildColorWidget(color))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
