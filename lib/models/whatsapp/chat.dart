import 'package:flutter/material.dart';

import '../../pages/challenges/whatsapp/helpers/chat_helpers.dart';

class Chat {
  final String name;
  final String message;
  final DateTime time;
  final String profilePic;
  final ChatStatus chatStatus;

  Chat({
    @required this.name,
    @required this.message,
    @required this.time,
    @required this.profilePic,
    @required this.chatStatus,
  });
}

List<Chat> chats = [
  Chat(
    name: 'John Doe',
    message: 'Current known limitations are that the currency format will only print the name of the currency, and does not support currency symbols.',
    time: DateTime.now(),
    profilePic: 'assets/week_1/cat.png',
    chatStatus: ChatStatus.isRead,
  ),
  Chat(
    name: 'John Doe',
    message: 'lorem ipsum valentine adan.',
    time: DateTime.now(),
    profilePic: 'assets/spaceX.jpg',
    chatStatus: ChatStatus.isRead,
  ),
  Chat(
    name: 'John Doe',
    message: 'currency format will only print the name of the currency, and does not support currency symbols.',
    time: DateTime.now(),
    profilePic: 'assets/week_1/cat.png',
    chatStatus: ChatStatus.isRead,
  ),
  Chat(
    name: 'John Doe',
    message: 'lorem ipsum valentine adan.',
    time: DateTime.now(),
    profilePic: 'assets/week_1/Playful_cat.png',
    chatStatus: ChatStatus.isNotRead,
  ),
  Chat(
    name: 'John Doe',
    message: 'lorem ipsum valentine adan.',
    time: DateTime.now(),
    profilePic: 'assets/week_1/cat.png',
    chatStatus: ChatStatus.isRead,
  ),
  Chat(
    name: 'John Doe',
    message: 'lorem ipsum valentine adan.',
    time: DateTime.now(),
    profilePic: 'assets/week_1/cat.png',
    chatStatus: ChatStatus.isNotRead,
  ),
];
