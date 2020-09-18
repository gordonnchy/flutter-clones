import 'package:flutter/material.dart';

import '../../../../models/whatsapp/status.dart';
import '../helpers/status_helpers.dart';

import './status/status_category.dart';

class StatusPage extends StatelessWidget {
  final List<Status> _unreadStatus = [];
  final List<Status> _readStatus = [];

  @override
  Widget build(BuildContext context) {
    _unreadStatus.clear();
    _readStatus.clear();

    statuses.forEach((status) {
      if (status.statusState == StatusState.isRead) {
        _readStatus.add(status);
      } else {
        _unreadStatus.add(status);
      }
    });
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: [
                FittedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/spaceX.jpg'),
                    radius: 50,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, color: Colors.white),
                    radius: 12.0,
                  ),
                )
              ],
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
            onTap: () {},
          ),
          // unread statuses
          StatusCategory(statuses: _unreadStatus, category: 'Recent updates'),
          // read statuses
          StatusCategory(statuses: _readStatus, category: 'Viewed updates')
        ],
      ),
    );
  }
}
