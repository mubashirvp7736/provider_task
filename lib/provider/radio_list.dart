import 'package:flutter/material.dart';

class RadioList extends ChangeNotifier{
  
  String item='male';
  void chanGe(String val){
    item=val;
notifyListeners();
  }
}