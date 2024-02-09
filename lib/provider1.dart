import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/drop_down.dart';
import 'package:providers/provider/drop_example.dart';
import 'package:providers/provider/radio_list.dart';

class MyRAD extends StatelessWidget {
  const MyRAD({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(Provider.of<AddCategory>(context,listen: false).selectedItem.toString())
          ],
        ),
      ),
    );
  }
}