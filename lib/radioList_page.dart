import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/radio_list.dart';
import 'package:providers/provider1.dart';

class RadioItems extends StatelessWidget {
  const RadioItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<RadioList>(
        builder: (context, value, child) => 
         Column(
          children: [
               RadioListTile(
                title:const Text('male'),
                value: 'male', 
              groupValue:value.item ,
               onChanged:(newvalue) {
                 return value.chanGe(newvalue.toString());
               },),
                RadioListTile(
                title:const Text('female'),
                value: 'female', 
              groupValue:value.item ,
               onChanged:(newvalue) {
                 return value.chanGe(newvalue.toString());
               },),
               FloatingActionButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => MyRAD(),));})
          ],
        ),
      ),
    );
  }
}