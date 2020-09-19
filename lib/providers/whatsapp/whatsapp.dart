import 'package:flutter/material.dart';

import '../../shared_prefs/shared_prefs.dart';

class WhatsAppProvider extends ChangeNotifier {
  int _lightDarkModeState = -1;

  // getters
  int get lightDarkModeState => _lightDarkModeState;

  void setlightDarkModeState(int value) {
    _lightDarkModeState = value;
    saveIntData(key: 'lightDarkModeState', data: _lightDarkModeState);
    notifyListeners();
  }
}
