import 'package:flutter/material.dart';

class CtegorieAdd extends ChangeNotifier{

  String? selectedItem;
  List<String> items = ['Option 1', 'Option 2', 'Option 3'];

  void setSelectedItem(String value) {
    selectedItem = value;
    notifyListeners();
  }

}