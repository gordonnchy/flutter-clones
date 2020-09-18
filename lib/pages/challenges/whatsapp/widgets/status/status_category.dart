import 'package:flutter/material.dart';

import '../time/time.dart';
import '../../../../../models/whatsapp/status.dart';

class StatusCategory extends StatelessWidget {
  final List<Status> statuses;
  final String category;

  StatusCategory({@required this.statuses, @required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          color: Colors.grey[300],
          child: Text('$category'),
        ),
        Column(
          children: statuses != null && statuses.isNotEmpty
              ? statuses
                  .map((status) => Column(
                        children: [
                          ListTile(
                            leading: FittedBox(
                              fit: BoxFit.contain,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(status.image),
                                radius: 50,
                              ),
                            ),
                            title: Text(status.name),
                            subtitle: TimeWidget(
                              hours: status.time.hour,
                              minutes: status.time.minute,
                            ),
                            onTap: () {},
                          ),
                          Divider(
                            indent: 85,
                            endIndent: 10,
                            height: 0,
                          ),
                        ],
                      ))
                  .toList()
              : [],
        ),
      ],
    );
  }
}
