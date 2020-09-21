import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 26.0;
  static const _textSizeDefault = 16.0;
  static final Color _textColorStrong = _hexToColor('000000');
  static final Color _textColorDefault = _hexToColor('666666');
  static final String _fontNameDefault = 'RobotoSlab';
  static final Color facebookButtonColor = _hexToColor('4267B2');
  static final Color dotifyAppColor = _hexToColor('FC642D');

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );

  static final bottomNavBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
    color: Colors.white,
  );

  static final buttonStyle = TextStyle(
      fontFamily: _fontNameDefault,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static final headerLarge = TextStyle(
    fontSize: _textSizeLarge,
    // fontFamily: _fontNameDefault,
    color: _textColorStrong,
  );

  static final textDefault = TextStyle(
    fontSize: _textSizeDefault,
    // fontFamily: _fontNameDefault,
    color: _textColorDefault,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
