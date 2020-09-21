import 'package:flutter/material.dart';

import '../../styles.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final Function onTap;

  Button(this.title, this.color, this.onTap);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: screenWidth,
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        color: color,
        child: Text(
          title,
          style: Styles.textDefault.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
