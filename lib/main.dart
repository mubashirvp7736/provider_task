import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/circle.dart';
import 'package:providers/color_chang.dart';
import 'package:providers/containersize.dart';
import 'package:providers/dropdown_example.dart';
import 'package:providers/icon_page.dart';
import 'package:providers/dropdown_new.dart';
import 'package:providers/provider/Iconprovider.dart';
import 'package:providers/dropdown_add.dart';
import 'package:providers/iconadd.dart';
import 'package:providers/provider/circleavatar.dart';
import 'package:providers/provider/color_change.dart';
import 'package:providers/provider/container.dart';
import 'package:providers/provider/drop_example.dart';
import 'package:providers/provider/icon_add.dart';
import 'package:providers/provider/drop_down.dart';
import 'package:providers/provider/radio_list.dart';
import 'package:providers/provider1.dart';
import 'package:providers/provider/providerdemo.dart';
import 'package:providers/radioList_page.dart';
import 'package:providers/shuffle.dart';
import 'package:providers/provider/shuffleProvider.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
     // ChangeNotifierProvider(create: (context) => Shuffle(name: 'mubashir' ,age:'Rasha' ),)
     ChangeNotifierProvider(create: (context) => AddCategory(),)
    ]
    
    ,
      child: MaterialApp(
        // routes: {
        //   "page1":(context) => MyRAD(),
  
        // },
        home:CategoryAdd(),
        
      ),
    );
    }}