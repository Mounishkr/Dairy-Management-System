import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _CustomerName = prefs.getString('ff_CustomerName') ?? _CustomerName;
    });
    _safeInit(() {
      _CustomerEmail = prefs.getString('ff_CustomerEmail') ?? _CustomerEmail;
    });
    _safeInit(() {
      _customerId = prefs.getInt('ff_customerId') ?? _customerId;
    });
    _safeInit(() {
      _customerPhoneNUmber =
          prefs.getInt('ff_customerPhoneNUmber') ?? _customerPhoneNUmber;
    });
    _safeInit(() {
      _quantity = prefs.getInt('ff_quantity') ?? _quantity;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _CustomerName = '';
  String get CustomerName => _CustomerName;
  set CustomerName(String value) {
    _CustomerName = value;
    prefs.setString('ff_CustomerName', value);
  }

  String _CustomerEmail = '';
  String get CustomerEmail => _CustomerEmail;
  set CustomerEmail(String value) {
    _CustomerEmail = value;
    prefs.setString('ff_CustomerEmail', value);
  }

  int _customerId = 0;
  int get customerId => _customerId;
  set customerId(int value) {
    _customerId = value;
    prefs.setInt('ff_customerId', value);
  }

  int _customerPhoneNUmber = 0;
  int get customerPhoneNUmber => _customerPhoneNUmber;
  set customerPhoneNUmber(int value) {
    _customerPhoneNUmber = value;
    prefs.setInt('ff_customerPhoneNUmber', value);
  }

  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
    prefs.setInt('ff_quantity', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
