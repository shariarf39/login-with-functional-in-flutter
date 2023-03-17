import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_demo/pages/Drawer/drawer.dart';
import 'package:login_demo/pages/model/item.dart';

import 'model/ItemWidget.dart';


class homepage extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NUB Notice Board",), backgroundColor: Colors.blue,),
      body: LayoutBuilder(
        builder: (context, cons){
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: cons.maxHeight,
        ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 210,
                    child: GridView.count(
                        crossAxisCount: 4,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, "/");
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.menu_book_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Notice")
                              ],

                            ),
                          ),
                        ),

                        /// Exam Schedule
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.border_color_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Exam"),
                                Text("Schedule")
                              ],

                            ),
                          ),
                        ),
                        ///Payement Deadline
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.payment,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Payment"),
                                Text("deadline")
                              ],

                            ),
                          ),
                        ),
                        ///Result
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.format_list_numbered,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Exam"),
                                Text("Result")
                              ],

                            ),
                          ),
                        ),
                        ///NUB Blood Bank
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.bloodtype_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Bood"),
                                Text("Bank")
                              ],

                            ),
                          ),
                        ),   InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.border_color_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Exam"),
                                Text("Schedule")
                              ],

                            ),
                          ),
                        ),   InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.border_color_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Exam"),
                                Text("Schedule")
                              ],

                            ),
                          ),
                        ),   InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.border_color_outlined,
                                  color: Colors.green,
                                  size: 30.0,
                                ),
                                Text("Exam"),
                                Text("Schedule")
                              ],

                            ),
                          ),
                        ),

                      ],
                    ),

                  ),

                  Text("Test", style: TextStyle(fontSize: 40),),
                  Container(
                    child: Image.asset(
                      "assets/images/fahim.png"
                    ),
                  ),
                ],


              ),
            ),
          ),






      );
        },

      ),



      drawer: drawerApp(),
    );
  }
}



