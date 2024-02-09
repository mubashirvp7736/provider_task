import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/Iconprovider2.dart';


class IconAdder extends StatelessWidget {
  const IconAdder({super.key});

  @override
  Widget build(BuildContext context) {
    final iconprovider=Provider.of<IconAddes>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
          controller: iconprovider.iconController,

          ),
        ElevatedButton(onPressed: (){
          iconprovider.takeIcon();
        }, child: Text("click")),

        CircleAvatar(
          child: Center(
            child: Consumer<IconAddes>(builder:
             ((context, value, child) => 
                value.iconName!=null? Icon(value.selecteditem):const SizedBox()
             )
            ),
          ),
        )
        ],
      ),
    );
  }
}