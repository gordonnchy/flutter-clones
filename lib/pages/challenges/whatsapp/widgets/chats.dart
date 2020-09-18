import 'package:flutter/material.dart';

import '../../../../models/whatsapp/chat.dart';

import '../helpers/chat_helpers.dart';
import '../widgets/time/time.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: FittedBox(
            fit: BoxFit.contain,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.white,
                      child: Image.asset(chats[index].profilePic),
                    );
                  },
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: AssetImage(chats[index].profilePic),
                radius: 50,
              ),
            ),
          ),
          title: Text(chats[index].name),
          subtitle: Row(
            children: [
              Icon(
                Icons.check,
                color: chats[index].chatStatus == ChatStatus.isRead
                    ? Colors.blue
                    : Colors.grey,
                    size: 18.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(chats[index].message)
            ],
          ),
          trailing: TimeWidget(
            hours: chats[index].time.hour,
            minutes: chats[index].time.minute,
          ),
          onTap: () {
            print('open chat');
          },
        );
      },
      separatorBuilder: (context, index) => Divider(
        indent: 85.0,
        endIndent: 10.0,
        height: 0.0,
      ),
    );
  }
}
