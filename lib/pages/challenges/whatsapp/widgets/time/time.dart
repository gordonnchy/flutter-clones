import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final int hours;
  final int minutes;

  TimeWidget({@required this.hours, @required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(hours < 10 ? '0$hours' : '$hours'),
        Text(':'),
        Text(minutes < 10 ? '0$minutes' : '$minutes'),
      ],
    );
  }
}
