import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login_demo/pages/api_connection/api_connection.dart';
import 'package:login_demo/pages/model/user.dart';
import 'package:login_demo/pages/model/userprepreparence.dart';
import 'package:login_demo/pages/registration.dart';


class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String name = "";
  final _formkey = GlobalKey<FormState>();
  var nubid_Contoral = TextEditingController();
  var password_Contoral = TextEditingController();
  var obSecure = true.obs;

  loginUserNow() async
  {
   try{
     var res, ress;
     res = await http.post(
         Uri.parse("https://nubnotics.000webhostapp.com/notic/flutter_Login.php"),

         body: {
           'user_email': nubid_Contoral.text.trim(),
           'user_password': password_Contoral.text.trim(),
         },

     );
     /*
     ress = await http.post(
         Uri.parse("https://nubnotics.000webhostapp.com/notic/flutter_login_other.php"),

         body: {
           'user_email': password_Contoral.text.trim(),
         //  'user_email': password_Contoral.text.trim(),
         },
     );*/



     if  (res.statusCode == 200){
       var resBodyofLogin = jsonDecode(res.body);
      // var resBodyofLogins = jsonDecode(ress.body);
       if(resBodyofLogin['success'])
       {
         Fluttertoast.showToast(msg: "Login Successfull");
         Navigator.pushNamed(context, "/homepage");
         User userinfo = User.fromJson(resBodyofLogin["userData"]);
         await RememberUSer.saveremember(userinfo);


       }
       else
       {
         Fluttertoast.showToast(msg: "Login failed");
       }
     }
   }
   catch(e){
     print("Error :: " + e.toString());
   }

  }










/////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: Image.asset(
                      "assets/images/nub_logos.png"
                    ),


                  ),
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
                                    keyboardType: TextInputType.number,
                                    controller: nubid_Contoral,
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
                                  ///////////

                                  SizedBox(height: 20,),

                               //Password
                               Obx(
                                       () =>    TextFormField(
                                         keyboardType: TextInputType.text,
                                         obscureText: obSecure.value,
                                         controller: password_Contoral,
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
                                  const SizedBox(height: 18,),
                                  //Button
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: (){


                                        if(_formkey.currentState!.validate()){
                                       //   validateUserEmail();
                                          loginUserNow();


                                           CircularProgressIndicator();


                                        }

                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28
                                        ),
                                        child: Text(
                                          "Login",
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an Account?"),
                                TextButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, "/registration");
                                    },
                                    child: Text(
                                      "Register Here"
                                    ),
                                ),
                              ],
                            ),
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
