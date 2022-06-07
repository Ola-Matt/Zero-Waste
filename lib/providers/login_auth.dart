import 'package:flutter/material.dart';
import 'package:zero_waste/providers/signup_auth.dart';

class LoginAuth extends ChangeNotifier {
  final String _username = '';
  final String _password = '';

  String get username => _username;
  String get password => _password;

  void getUsername() {
    super.dispose();
    notifyListeners();
  }

  void getPassword() {
    super.dispose();
    notifyListeners();
  }
}
