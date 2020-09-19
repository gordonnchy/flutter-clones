import 'package:flutter/material.dart';

import './time.dart';
import '../../helpers/call_helpers.dart';

class CallTimeStatus extends StatelessWidget {
  final CallStatus callStatus;
  final DateTime date;

  CallTimeStatus({
    @required this.callStatus,
    this.date
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        callStatus == CallStatus.missedCall
            ? Icon(
                Icons.call_missed,
                color: Colors.red,
                size: 18.0,
              )
            : Container(),
        callStatus == CallStatus.outgoingCall
            ? Icon(
                Icons.call_made,
                color: Colors.green,
                size: 18.0,
              )
            : Container(),
        callStatus == CallStatus.receivedCall
            ? Icon(
                Icons.call_received,
                color: Colors.green,
                size: 18.0,
              )
            : Container(),
        SizedBox(
          width: 10.0,
        ),
        TimeWidget(
          date: date,
          dateFormat: 'E d, y H:m',
        ),
      ],
    );
  }
}
