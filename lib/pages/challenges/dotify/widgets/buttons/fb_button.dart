import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../styles.dart';

class FacebookButton extends StatelessWidget {
  final String title;
  final Function onTap;

  FacebookButton(this.title, this.onTap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: Styles.facebookButtonColor,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Styles.textDefault.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
