import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// save data
void saveIntData({@required String key, @required int data}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setInt(key, data);
}

// read data
Future<int> readIntData({@required String key}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getInt(key);
}
