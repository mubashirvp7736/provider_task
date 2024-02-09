import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/providerdemo.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){
   Provider.of<providerremo>(context,listen: false).incrMent();
     }),
     body: Center(
      child: Consumer<providerremo> (builder: 
      (context, value, child) => Text(value.count.toString())
      ,)
      
     ),
    );
  }
}