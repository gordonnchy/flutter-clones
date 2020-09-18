import 'package:flutter/material.dart';

import '../constants/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/spaceX.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text('Godson Nchy'),
              accountEmail: Text('godsonnchy@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/week_1/cat.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.colorize),
                  title: Text('Boom color change'),
                  onTap: () => Navigator.pushNamed(context, color_change),
                ),
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('Basic Profile'),
                  onTap: () => Navigator.pushNamed(context, basic_profile),
                ),
                ListTile(
                  leading: Icon(Icons.whatshot),
                  title: Text('Whatsapp clone'),
                  onTap: () => Navigator.pushNamed(context, whatsapp),
                )
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/hackathon.png',
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'A hackathon is a design sprint-like event; often, in which computer programmers and others involved in software development, including graphic designers, interface designers, project managers, domain experts, and others collaborate intensively on software project',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          ),
        ],
      )),
    );
  }
}
