import 'package:flutter/material.dart';
class registration extends StatefulWidget {


  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final _fromkey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  registra_home (BuildContext context){
    if(_fromkey.currentState!.validate()){
      Navigator.pushNamed(context, "/");
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _fromkey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text("Welcome To Northern University",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Registration From",
              style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.black
              ),
              ),
              Padding(padding:
              const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        labelText: "Enter Your name"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please Enter Name";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "NUB ID",
                          labelText: "Enter your NUB ID"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please Enter Your NUB ID";

                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        labelText: "Enter Your E-mail",

                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please Enter Your E-mail";
                        }
                        return null;
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "password",
                        labelText: "Enter Your Password"
                      ),
                      controller: _pass,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please Enter Your Password";
                        }
                        if(value!.length<6){
                          return "Enter Please 6 digit Password";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password"
                      ),
                      controller: _confirmPass,
                      validator: (value){
                        if(value!.isEmpty)
                          return "Empty";

                        if(value != _pass.text){
                          return "Password Don;t Match \n Enter Again";

                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blue),

                        onPressed: () => registra_home(context),
                        child: Text("Registration")

                    )

                  ],
                ),


              )


            ],
          ),
        ),
      ),
    );
  }
}
