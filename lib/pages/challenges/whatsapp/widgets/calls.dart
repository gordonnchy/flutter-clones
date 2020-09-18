import 'package:flutter/material.dart';

import '../../../../models/whatsapp/call.dart';

import '../widgets/time/call_time.dart';
import '../helpers/call_helpers.dart';

class CallsPage extends StatelessWidget {
  _makeNormalCall() {
    print('make a normal call');
  }

  _makeVideoCall() {
    print('make a video call');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: calls.length,
      itemBuilder: (BuildContext context, int index) {
        final _callType = calls[index].callType;
        final _callStatus = calls[index].callStatus;
        return ListTile(
          leading: FittedBox(
            fit: BoxFit.contain,
            child: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage(
                calls[index].image,
              ),
              radius: 50,
            ),
          ),
          title: Text(calls[index].name),
          subtitle: CallTimeStatus(
            callStatus: _callStatus,
            hours: calls[index].time.hour,
            minutes: calls[index].time.minute,
          ),
          trailing: IconButton(
            icon: Icon(
              _callType == CallType.normalCall ? Icons.call : Icons.videocam,
            ),
            onPressed: _callType == CallType.normalCall
                ? _makeNormalCall
                : _makeVideoCall,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(
        indent: 85.0,
        endIndent: 10.0,
        height: 0.0,
      ),
    );
  }
}
