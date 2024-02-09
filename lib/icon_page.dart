import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/icon_add.dart';

class IconAddw extends StatelessWidget {
  const IconAddw({super.key});

  @override
  Widget build(BuildContext context) {
    final iconAdder=Provider.of<IconAdd>(context,listen: false);
    return Scaffold(
     body: Column(
      children: [
       TextFormField(
        controller:iconAdder.iconcontroller ,
       ),
       SizedBox(height: 10,),
       TextButton(onPressed: (){

        iconAdder.mubu();
       }, child: Text('click')),
       Consumer<IconAdd>(
        builder: (context, value, child) => 
         CircleAvatar(
          child: Center(
            child: value.itemsIcon!=null?Icon(value.selectedItem):SizedBox()
          ),
         ),
       )
      ],
     ),
    );
  }
}