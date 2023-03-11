import 'package:flutter/material.dart';

class homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fahim Shariar",), backgroundColor: Colors.red,),

      body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(padding:
           const EdgeInsets.only(top: 40),
             child: Center(
               child: (
               Text("Welcome",
                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
               )
               ),
             ),

           ),
           TextButton(
             child: Text("Fahim"),
           onPressed: null),
         ],
       ),
      ),

    );
  }
}
