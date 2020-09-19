import 'package:flutter/material.dart';

import './widgets/calls.dart';
import './widgets/chats.dart';
import './widgets/status.dart';
import './widgets/camera.dart';

class WhatsAppPage extends StatefulWidget {
  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage> {
  int _index = 1;
  Color _defaultColor = Colors.teal[800];

  int _radioValue = -1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: _defaultColor,
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fill,
                  items: [
                    PopupMenuItem(
                      textStyle: TextStyle(
                        color: Colors.black,
                      ),
                      child: ListTile(
                        title: Text(
                          'Theme',
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Choose a Theme'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Radio<int>(
                                            value: 0,
                                            groupValue: _radioValue,
                                            onChanged: (int value) {
                                              print(value);
                                            },
                                          ),
                                          Text('Light mode'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio<int>(
                                            value: 1,
                                            groupValue: _radioValue,
                                            onChanged: (int value) {
                                              print(value);
                                            },
                                          ),
                                          Text('Dark mode'),
                                        ],
                                      )
                                    ],
                                  ),
                                  actions: [
                                    FlatButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('Cancel'),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ],
                );
              },
            )
          ],
          bottom: TabBar(
            onTap: (int index) {
              setState(() {
                _index = index;
              });
            },
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [CameraPage(), ChatsPage(), StatusPage(), CallsPage()],
        ),
        floatingActionButton: _index == 1
            ? FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.message,
                ),
                backgroundColor: _defaultColor,
              )
            : _index == 2
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.edit,
                          color: _defaultColor,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.camera_alt),
                        backgroundColor: _defaultColor,
                      ),
                    ],
                  )
                : _index == 3
                    ? FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add_call),
                        backgroundColor: _defaultColor,
                      )
                    : Container(),
      ),
    );
  }
}
