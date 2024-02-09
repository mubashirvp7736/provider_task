import 'package:flutter/material.dart';

class CircleA extends ChangeNotifier{
 List colorsn=[Colors.black,Colors.blue];
  dynamic index=0;
 void changecolor(){
  
 index=index+1;
 notifyListeners();

 }
}