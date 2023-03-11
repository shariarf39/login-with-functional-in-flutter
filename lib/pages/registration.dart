import 'package:flutter/material.dart';
class registration extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text("Welcome",
            style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Registration",
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
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      labelText: "Enter Your E-mail",

                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Address",
                      labelText: "Enter your Address"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      labelText: "Enter Your Password"
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password"
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),

                      onPressed: () {},
                      child: Text("Registration")

                  )

                ],
              ),


            )
            

          ],
        ),
      ),
    );
  }
}
