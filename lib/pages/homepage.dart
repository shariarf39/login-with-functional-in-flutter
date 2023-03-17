import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
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
                            Navigator.pushNamed(context, "/notice_activity");
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.menu_book_outlined,
                                  color: Colors.redAccent,
                                  size: 30.0,
                                ),
                                Text("Notice"),
                                Text("Board")
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
                                  color: Colors.blue,
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
                                  color: Colors.blue,
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
                                  color: Colors.deepOrangeAccent,
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
                                  color: Colors.deepPurpleAccent,
                                  size: 30.0,
                                ),
                                Text("Blood"),
                                Text("Bank")
                              ],

                            ),
                          ),
                        ),
                        ///Upcoming Event
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.event,
                                  color: Colors.blueGrey,
                                  size: 30.0,
                                ),
                                Text("Upcoming"),
                                Text("Event")
                              ],

                            ),
                          ),
                        ),
                        ///---------------
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            child: Column(
                              children: [

                                Icon(
                                  Icons.lock_clock,
                                  color: Colors.purple,
                                  size: 30.0,
                                ),
                                Text("Coming"),
                                Text("Soon")
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
                                  Icons.lock_clock,
                                  color: Colors.brown,
                                  size: 30.0,
                                ),
                                Text("Coming"),
                                Text("Soon")
                              ],

                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                  Container(
                    child: ImageSlideshow(
                    //  width: double.infinity,
                      height: 200,
                      initialPage: 0,
                      indicatorColor: Colors.blue,

                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [

                          Image.asset(

                            "assets/slide_images/nub1.png",


                          ),
                        Image.asset(
                            "assets/slide_images/nub2.png"
                        ),
                        Image.asset(
                            "assets/slide_images/nub3.png"
                        ),
                        Image.asset(
                            "assets/slide_images/nub4.png"
                        ),   Image.asset(
                            "assets/slide_images/nub5.png"
                        ),   Image.asset(
                            "assets/slide_images/nub6.png"
                        ),   Image.asset(
                            "assets/slide_images/nub7.png"
                        ),

                      ],


                    ),

                  /*  child: Image.asset(
                        "assets/images/fahim.png"
                    ),*/
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Center(
                      child: Text("Northern University Bangladesh",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),

                      ),
                    ),

                  ),
                  Container(
                    child: Center(
                      child: Text("Knowladge for Innovation and Change",
                        style: TextStyle(
                        //  fontSize: 20,
                          fontWeight: FontWeight.normal
                        ),

                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text("NUB Permanent Campus", style:
                          TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    ),
                    
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text("111/2 Kawla Jame Mosjid Road, Dakshinkhan, Airpost, Dhaka", style:
                        TextStyle(
                          //  fontSize: 15,
                            fontWeight: FontWeight.normal
                        ),
                        ),

                      ],
                    ),

                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text("Phone: 01755514661, 01755514659", style:
                        TextStyle(
                          //  fontSize: 15,
                            fontWeight: FontWeight.normal
                        ),
                        ),

                      ],
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



