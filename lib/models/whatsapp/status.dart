import 'package:flutter/material.dart';

import '../../pages/challenges/whatsapp/helpers/status_helpers.dart';

class Status {
  final String name;
  final DateTime time;
  final String image;
  final StatusState statusState;

  Status({
    @required this.name,
    @required this.time,
    @required this.image,
    @required this.statusState,
  });
}

List<Status> statuses = [
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isRead,
  ),
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isRead,
  ),
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isRead,
  ),
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isRead,
  ),
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isNotRead,
  ),
  Status(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    statusState: StatusState.isNotRead,
  ),
];
