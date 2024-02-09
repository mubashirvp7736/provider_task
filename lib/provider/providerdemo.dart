import 'package:flutter/material.dart';

class providerremo with ChangeNotifier{

  
  String selectedItem='Male';
  
  void changeItem(String val){
    selectedItem = val;
notifyListeners();
  }
  Widget cvb(){
    return
   Container(
    height:100,
    width:100,
    decoration:BoxDecoration(color: Colors.deepOrange,shape: BoxShape.circle)
   );

  }
   int count=0;
  void incrMent(){

  count=count+1;
  notifyListeners();

  }

}