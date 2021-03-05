import 'package:flutter/material.dart';

/// A class that extends [ChangeNotifier] and notify the provider when the value change 
class Counter extends ChangeNotifier {
  int value = 0;

  void increment() {
    value++;
    notifyListeners();
  }

  void decrement() {
   value--;
   notifyListeners();
  }
}