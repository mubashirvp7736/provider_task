import 'package:flutter/material.dart';

class ColorChang extends ChangeNotifier{
List clors=[Colors.red,Colors.yellow];

dynamic index=0;
 void mubAsh(){
  index=index+1;
  notifyListeners();
 }

}