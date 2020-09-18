import 'package:flutter/material.dart';

import '../../pages/challenges/whatsapp/helpers/call_helpers.dart';

class Call {
  final String name;
  final DateTime time;
  final String image;
  final CallStatus callStatus;
  final CallType callType;

  Call({
    @required this.name,
    @required this.time,
    @required this.image,
    @required this.callStatus,
    @required this.callType,
  });
}

List<Call> calls = [
  Call(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    callStatus: CallStatus.missedCall,
    callType: CallType.normalCall,
  ),
  Call(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    callStatus: CallStatus.outgoingCall,
    callType: CallType.videoCall,
  ),
  Call(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    callStatus: CallStatus.receivedCall,
    callType: CallType.videoCall,
  ),
  Call(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    callStatus: CallStatus.missedCall,
    callType: CallType.normalCall,
  ),
  Call(
    name: 'John Doe',
    time: DateTime.now(),
    image: 'assets/spaceX.jpg',
    callStatus: CallStatus.outgoingCall,
    callType: CallType.videoCall,
  ),
];
