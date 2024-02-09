// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:providers/provider/shuffleProvider.dart';

// class Shuffling extends StatelessWidget {
//   const Shuffling({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final type=Provider.of<Shuffle>(context);
//     return Scaffold(
//      body: 
//        Column(
//         children: [
//          TextField(
//           controller: type.namecontroller,
//          ),
       
//           SizedBox(height: 10,),
//           TextField(
//             controller: type.agecontroller,
//           ),
//           ElevatedButton(onPressed: (){
//             Provider.of<Shuffle>(context,listen: false).Shuffletext();
//           }, child:Text('click')),
//           Consumer<Shuffle>(
//             builder: (context, value, child) => 
//              Text(value.selectedText))
//         ],
       
//        ),
  
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/provider/shuffleProvider.dart';

class Shuffling extends StatelessWidget {
  const Shuffling({Key? key});

  @override
  Widget build(BuildContext context) {
    final shuffleProvider = Provider.of<Shuffle>(context); 
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: shuffleProvider.nameController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter text 1'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: shuffleProvider.ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter text 2'),
          ),
          ElevatedButton(
            onPressed: () {
              shuffleProvider.multiplyText();
            },
            child: Text('Click'),
          ),
          SizedBox(height: 20),
        Consumer<Shuffle>(
     builder: (context, shuffleProvider, child) {
    return CircleAvatar(
      radius: 50,
      child: Text(
        shuffleProvider.result, 
        style: TextStyle(fontSize: 24),
      ),
    );
  },
),
        ],
      ),
    );
  }
}
