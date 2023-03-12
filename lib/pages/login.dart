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
      color: Colors.white,

      child: SingleChildScrollView(
        
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/nub.png',
                height: 90,
                width: 100,
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
              Text("Your ID- $name",
                style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
              ),

              Padding(padding:
              const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: ("NUB ID"),
                        labelText: ("Enter NUB ID")
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return "Please Enter your ID";
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
                        else if(value!.length<6){
                          return "Please Enter 6 digit Password";
                        }

                        null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () => moveToHome(context),

                        child: Text("LOGIN", style: TextStyle(
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
