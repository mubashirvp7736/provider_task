import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/drop_down.dart';
import 'package:providers/provider1.dart';

class CatDrop extends StatelessWidget {
  const CatDrop({super.key});

  @override
  Widget build(BuildContext context) {
  //final catAdd=Provider.of<CtegorieAdd>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Consumer<CtegorieAdd>(
          builder:(context, value, child) {
       return DropdownButtonFormField(
        value: value.selectedItem,
        items:value.items.map((String value){
          return DropdownMenuItem(
            value: value,
            child:Text(value)
                   );
        }).toList() , 
        onChanged:(neWvalue){
        value.setSelectedItem(neWvalue.toString());
          },
        decoration: InputDecoration(border: OutlineInputBorder()),
         );
        
        }, ),
        SizedBox(height: 5,),
        TextButton(onPressed: (){
 Navigator.push(context, MaterialPageRoute(builder: (context)=>MyRAD()));
     
        }, child:Text("click"))
   ] )
    );
  }
}