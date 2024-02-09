import 'package:flutter/material.dart';

class ContAiner extends ChangeNotifier{

 dynamic height=100;
 dynamic width=200;


 void sizeincrese(){
  
 height=height*2;
 width=width*2;
 notifyListeners();

 }

}