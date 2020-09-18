import 'dart:core';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicProfile1Page extends StatelessWidget {
  final TextStyle _textDefault = TextStyle(
      fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500);

  Widget _buildStatsColumn(int counts, String title) {
    return Column(
      children: [
        Text(
          '$counts',
          style: _textDefault,
        ),
        Text(
          '$title',
          style: _textDefault,
        )
      ],
    );
  }

  Widget _buildContactInfoTile(String type, String value,
      {@required String scheme}) {
    return Column(
      children: [
        ListTile(
          title: Text(
            '$type',
            style: _textDefault.copyWith(
              color: Colors.red,
            ),
          ),
          subtitle: Text('$value'),
          onTap: () {
            _launchURL(Uri(
              scheme: scheme,
              path: value,
              queryParameters:
                  type == 'email' ? {'subject': 'Greetings gordon'} : null,
            ).toString());
          },
        ),
        Divider(),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('View Profile'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.red.withOpacity(0.7),
                ],
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red[300],
                  radius: 40,
                  child: IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      _launchURL(
                        Uri(scheme: 'tel', path: '+255718848441').toString(),
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white24,
                      radius: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset('assets/week_1/cat.png'),
                      ),
                    ),
                    Text(
                      'Godson Nchy',
                      style: _textDefault.copyWith(fontSize: 22.0),
                    ),
                    Text(
                      'Silicon-valley, California',
                      style: _textDefault,
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.red[300],
                  radius: 40,
                  child: IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {
                      _launchURL(
                          Uri(scheme: 'sms', path: '+255718848441').toString());
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.red.withOpacity(0.7),
                  child: _buildStatsColumn(50895, 'FOLLOWERS'),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.red,
                  child: _buildStatsColumn(34524, 'FOLLOWING'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              _buildContactInfoTile('Email', 'godsonnchy@gmail.com',
                  scheme: 'mailto'),
              _buildContactInfoTile('Phone', '+255718848441', scheme: 'tel'),
              _buildContactInfoTile('Twitter', 'twitter.com/gordonnchy',
                  scheme: 'https'),
              _buildContactInfoTile('Facebook', 'facebook.com/gordonnchy',
                  scheme: 'https'),
              _buildContactInfoTile('Github', 'github.com/gordonnchy',
                  scheme: 'https'),
            ],
          )
        ],
      ),
    );
  }
}
