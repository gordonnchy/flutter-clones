import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TimeWidget extends StatelessWidget {
  final DateTime date;
  final String dateFormat;

  TimeWidget({@required this.date, @required this.dateFormat});

  @override
  Widget build(BuildContext context) {
    
    final format = DateFormat(this.dateFormat);
    final date = format.format(this.date);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(date)
        // Text(hours < 10 ? '0$hours' : '$hours'),
        // Text(':'),
        // Text(minutes < 10 ? '0$minutes' : '$minutes'),
      ],
    );
  }
}
