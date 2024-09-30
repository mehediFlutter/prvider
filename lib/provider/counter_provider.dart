import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterProvider extends ChangeNotifier {
  late SharedPreferences prefs;
  int _count = 0;
  bool themeModeValue = true;

  int get count => _count;

  CounterProvider() {
    _loadPreferences();
  }

  void _loadPreferences() async {
     prefs = await SharedPreferences.getInstance();
    themeModeValue = prefs.getBool('themeBool') ?? true;
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  void themeChange() async {
    themeModeValue = !themeModeValue;
    await prefs.setBool('themeBool', themeModeValue);
    notifyListeners();
  }
}
