import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/drop_example.dart';
import 'package:providers/provider1.dart';

class CategoryAdd extends StatelessWidget {
  const CategoryAdd({super.key});

  @override
  Widget build(BuildContext context) {
    final Cprovider=Provider.of<AddCategory>(context);
    return Scaffold(
      body: Column(
        children: [
          DropdownButtonFormField(
            value:Cprovider.selectedItem,
            items:Cprovider.catItems.map((String value){
              return DropdownMenuItem(
                value: value,
                child:Text(value)
                
                );
            }).toList(), 
            onChanged: (newvalue) {
              return Cprovider.arrangeItems(newvalue.toString());
            },),
            TextButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyRAD(),));}, child: Text("click"))
        ],
      ),
    );
  }
}