import 'package:flutter/material.dart';

class IconAddes extends ChangeNotifier{
 
 final iconController=TextEditingController();
  Map<String,IconData> iconName={
    'home':Icons.home,
    'delete':Icons.delete,
    'bag':Icons.badge,
    "calender":Icons.calendar_month
  };
  IconData ? selecteditem;
  takeIcon(){
    String enteredText=iconController.text.toLowerCase();
 if(iconName.containsKey(enteredText)){
  selecteditem=iconName[enteredText];

 }else{
   selecteditem= null;
 }
  notifyListeners();
  }
  
}