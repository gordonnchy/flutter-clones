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
            mainAxisSize: MainAxisSize.min,
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
              Expanded(
                child: Text(
                  chats[index].message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          trailing: FittedBox(
            child: TimeWidget(
              date: chats[index].time,
              dateFormat: 'Hm',
            ),
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
