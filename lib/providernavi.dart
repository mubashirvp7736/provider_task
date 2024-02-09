import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/providerdemo.dart';

class Radiobut extends StatelessWidget {
  const Radiobut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Consumer<providerremo>(
            builder: (context, value, child){
            return Column(
              children: [
              RadioListTile(
                title:const Text('Male'),
                value: 'Male',
               groupValue:value.selectedItem ,
                onChanged: (newValue){
                  value.changeItem(newValue.toString());
                }),
              RadioListTile(
                title: Text('Female'),
                value: 'Female',
               groupValue:value.selectedItem ,
                onChanged: (newValue){
                  value.changeItem(newValue.toString());
                })
                
               ],
            );}
           ),
           ElevatedButton(onPressed: (){Navigator.pushNamed(context, "page1");}, child:const Text('submit')),
            const  SizedBox(height: 10,),
           Provider.of<providerremo>(context).cvb()
         ],
       ),
    );
  }
}