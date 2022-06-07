import 'package:flutter/material.dart';

class SignupAuth extends ChangeNotifier {
  String _name = '';
  String _phoneNo = '';
  String _address = '';
  String _state = '';
  String _userType = '';
  final bool _hasBeenPressed = false;

  String get name => _name;
  String get phoneNo => _phoneNo;
  String get address => _address;
  String get state => _state;
  String get farmerType => _userType;
  bool get hasBeenPressed => _hasBeenPressed;

  void getName(String value) {
    _name = value;
    notifyListeners();
  }

  void getPhone(String value) {
    _phoneNo = value;
    notifyListeners();
  }

  void getState(String value) {
    _state = value;
    notifyListeners();
  }

  void getAddress(String value) {
    _address = value;
    notifyListeners();
  }

  void getUserType(String value) {
    _userType = value;
    notifyListeners();
  }
}
