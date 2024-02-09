import 'package:flutter/material.dart';

class IconAdd extends ChangeNotifier{
final iconcontroller=TextEditingController();
Map<String,IconData>itemsIcon={
  "home":Icons.home,
  "delete":Icons.delete,
  "bag":Icons.badge,
  "add":Icons.add
};
IconData? selectedItem;
void mubu(){
 String enterText=iconcontroller.text.toLowerCase(); 
if(itemsIcon.containsKey(enterText)){
  selectedItem=itemsIcon[enterText];
}else{
  selectedItem=null;
}
  notifyListeners();
}

}