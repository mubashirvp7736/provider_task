import 'package:flutter/material.dart';

class AddCategory extends ChangeNotifier{

String? selectedItem;
List<String>catItems=["orange","Apple","grapes","mango"];
void arrangeItems(String value){
selectedItem=value;

}

}