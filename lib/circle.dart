import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/circleavatar.dart';

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Center(
        child: Consumer<CircleA>( 
           builder: (context, value, child) => CircleAvatar(
            backgroundColor: value.colorsn[value.index],
          ),
        )
       )
        ,
      floatingActionButton: FloatingActionButton(onPressed: (){Provider.of<CircleA>(context,listen: false).changecolor();}),
    );
  }
}