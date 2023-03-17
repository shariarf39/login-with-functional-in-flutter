


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login_demo/pages/api_connection/api_connection.dart';
import 'package:login_demo/pages/model/user.dart';


class registration extends StatefulWidget {
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String name = "";

  final _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var name_Contoral = TextEditingController();
  var nubid_Contorals = TextEditingController();
  var email_Contoral = TextEditingController();

  var password_Contorals = TextEditingController();
  var cpassword_Contoral = TextEditingController();

  var obSecure = true.obs;

validateUserEmail() async{
  try{
   var res = await http.post(
      Uri.parse(API.validate_email),
      body: {
        'user_email' :email_Contoral.text.trim(),
      },
    );
    if(res.statusCode==200){
      var resbody = jsonDecode(res.body);
      if(resbody['emailFound'] == true)
        {
          Fluttertoast.showToast(msg: "Email is already in someone else use.");
         // Navigator.pushNamed(context, "/homepage");

        }else
          {
            registerAndSaveUserRecord();

          }
    }
  }
  catch(e){

  }
}
  registerAndSaveUserRecord() async
  {
    User userModel = User(
      1,
      name_Contoral.text.trim(),
      nubid_Contorals.text.trim(),
      email_Contoral.text.trim(),
      password_Contorals.text.trim()
    );
    try{
     var res = await http.post(
        Uri.parse(API.singup),
        body: userModel.toJson(),
      );
      if  (res.statusCode == 200){
        var resBodyOfString = jsonDecode(res.body);
        if(resBodyOfString['successfull'] == true)
          {
            Fluttertoast.showToast(msg: "Registration Successfail");
            name_Contoral.clear();
            nubid_Contorals.clear();
            email_Contoral.clear();
            password_Contorals.clear();
            cpassword_Contoral.clear();
            Navigator.pushNamed(context, "/");
          }
      }else
        {
          Fluttertoast.showToast(msg: "Registration failed");
        }

    }
    catch(e){
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black45,
      body: LayoutBuilder(
        builder: (context, cons){
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: Text(
                        "Registration",
                      style: TextStyle(color: Colors.white,
                      fontSize: 30
                      ),
                    ),


                  ),

                  SizedBox(height: 30,),
                  SizedBox(height: 40,),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(
                            Radius.circular(60)
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0,-3),
                          ),

                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30,30, 30,8),
                        child: Column(
                          children: [
                            ////email and Pasword
                            Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  //NUB ID
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: name_Contoral,
                                    validator: (val) => val == ""? "Please Write Full Name" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.blue,
                                      ),
                                      hintText: "Name",
                                      labelText: "Enter Your Name",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,

                                    ),

                                  ),
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: nubid_Contorals,
                                    validator: (val) => val == ""? "Please Write NUB ID" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.abc,
                                        color: Colors.blue,
                                      ),
                                      hintText: "NUB ID",
                                      labelText: "Enter NUB ID",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,

                                    ),

                                  ),
                                  SizedBox(height: 20,),
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: email_Contoral,
                                    validator: (val) => val == ""? "Please Write Your E-main" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.blue,
                                      ),
                                      hintText: "E-mail",
                                      labelText: "Enter Your E-mail",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          )
                                      ),
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,

                                    ),

                                  ),
                                  SizedBox(height: 20,),

                                  ///////////



                                  ///Password
                                  Obx(
                                        () =>    TextFormField(
                                          keyboardType: TextInputType.text,
                                      obscureText: obSecure.value,
                                      controller: password_Contorals,
                                      validator: (val) => val == ""? "Please Enter Password" : null,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.blue,
                                        ),
                                        suffixIcon: Obx(
                                              ()=> GestureDetector(
                                            onTap: (){

                                              obSecure.value =!obSecure.value;
                                            },
                                            child: Icon(
                                              obSecure.value ? Icons.visibility_off: Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),

                                        hintText: "Password",
                                        labelText: "Enter Your Password",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 6,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,

                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Obx(
                                        () =>    TextFormField(
                                      keyboardType: TextInputType.text,
                                      obscureText: obSecure.value,
                                      controller: cpassword_Contoral,
                                      validator: (val) => val == ""? "Please Enter Password" : null,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.blue,
                                        ),
                                        suffixIcon: Obx(
                                              ()=> GestureDetector(
                                            onTap: (){

                                              obSecure.value =!obSecure.value;
                                            },
                                            child: Icon(
                                              obSecure.value ? Icons.visibility_off: Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),

                                        hintText: "confirm Password",
                                        labelText: "Enter Your confirm Password",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            )
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 6,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,

                                      ),

                                    ),
                                  ),

                                  ///---------------------------------------
                                  const SizedBox(height: 18,),
                                  //Button
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: (){



                                        if(_formkey.currentState!.validate()){
                                          validateUserEmail();


                                    //    CircularProgressIndicator();


                                        }

                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 28
                                        ),
                                        child: Text(
                                          "Registration",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            //Register Button

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



          );
        },
      ),

    );
  }
}
