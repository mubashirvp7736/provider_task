import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/container.dart';

class Containr extends StatelessWidget {
  const Containr({super.key});

  @override
  Widget build(BuildContext context) {
   // final sized=Provider.of<ContAiner>(context);
    return Scaffold(
        body: Column(
          children: [
            Consumer<ContAiner>(
              builder: (context, value, child) => 
               Container(
                height:value.height ,
                width: value.width,
                color: Colors.red,
                  
                  ),
              
            ),
            ElevatedButton(onPressed: (){
              Provider.of<ContAiner>(context,listen: false).sizeincrese();
            }, child: Text('click'))
          ],
        ),
    );
  }
}