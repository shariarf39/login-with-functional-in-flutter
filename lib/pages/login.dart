import 'package:flutter/material.dart';


class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String name = "";
  final _formkey = GlobalKey<FormState>();
  moveToHome (BuildContext context){
   if(_formkey.currentState!.validate()){
     Navigator.pushNamed(context, "/homepage");
   }
  }
  @override
  Widget build(BuildContext context) {
    return Material(

      child: SingleChildScrollView(
        
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/fahim.png'),
                radius: 40,
              ),
              SizedBox(
                height: 30,
              ),
              Text("Welcome ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,
                color: Colors.brown
                ),
              ),
              Text("Login",
                style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Text("$name",
                style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              ),

              Padding(padding:
              const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: ("E-mail"),
                        labelText: ("Enter E-mail")
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return "Please Enter the E-mail";
                        }
                        return null;
                      },


                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },


                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Enter Password"
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        }
                        else if(value!.length<4){
                          return "Please Enter Long Password";
                        }

                        null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () => moveToHome(context),

                        child: Text("Login", style: TextStyle(
                          fontSize: 40,
                        ), ),
                    )
                  ],
                ),
              ),

                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/registration");
                        },
                        child: Text("Not Register? Create Account.", style: TextStyle(
                          color: Colors.black
                        ),)

                    )
                  ],

                ),


            ],
          ),
        ),
      ),
    );
  }
}
