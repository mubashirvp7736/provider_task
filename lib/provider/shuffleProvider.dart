// import 'package:flutter/material.dart';

// class Shuffle extends ChangeNotifier{
// final namecontroller=TextEditingController() ;
// final agecontroller=TextEditingController();


// dynamic selectedText;
//  void Shuffletext(){

// selectedText= namecontroller.text+agecontroller.text;
//   notifyListeners();
 
//  }
 
// }
import 'package:flutter/material.dart';

class Shuffle extends ChangeNotifier {
  final  nameController = TextEditingController();

  final ageController = TextEditingController();

  String result="";

  void multiplyText() {
    int number1 = int.tryParse(nameController.text) ?? 0;
    int number2 = int.tryParse(ageController.text) ?? 0;
    int product = number1 * number2;

    result = '$product';

    notifyListeners();
  }
}
