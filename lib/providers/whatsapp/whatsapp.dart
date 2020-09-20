import 'package:flutter/material.dart';

import '../../shared_prefs/shared_prefs.dart';

class WhatsAppProvider extends ChangeNotifier {
  void setlightDarkModeState(int value) {
    saveIntData(key: 'lightDarkModeState', data: value);
    notifyListeners();
  }

  Future<int> readLightDarkStateMode() async {
    final modeValue = await readIntData(key: 'lightDarkModeState') ?? 0;
    return modeValue;
  }
}
