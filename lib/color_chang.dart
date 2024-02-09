

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/color_change.dart';
import 'package:providers/provider/container.dart';

class ColorChange extends StatelessWidget {
  const ColorChange({super.key});

  @override
  Widget build(BuildContext context) {
    log('hello');
    return Scaffold(
      body:Column(
        children: [
          Consumer<ColorChang>(
            builder: (context, value, child) => 
             CircleAvatar(
              backgroundColor:value.clors[value.index],
            ),
          ),
          TextButton(onPressed: (){
            Provider.of<ColorChang>(context,listen: false).mubAsh();
          }, child: Text('click'))

        ],
      ) ,
    );
  }
}