import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterController extends ChangeNotifier {
  late String _name;
  String get name => _name;

  late String _email;
  String get email => _email;

  RegisterController() {
    reset();
  }

  void reset() {
    _name = '';
    _email = '';
    notifyListeners();
  }

  void setUser(String name, String email) {
    _name = name;
    _email = email;
    notifyListeners();
  }
}
