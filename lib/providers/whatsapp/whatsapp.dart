import 'package:flutter/material.dart';

class WhatsAppProvider extends ChangeNotifier {
  int _lightDarkModeState = -1;

  // getters
  int get lightDarkModeState => _lightDarkModeState;

  void setlightDarkModeState(int value) {
    _lightDarkModeState = value;
    notifyListeners();
  }
}
