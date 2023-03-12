import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawerApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.blue),
                accountName: const Text("NUB"),
                accountEmail: const Text("Northern University Bangladesh\n"
                    "https://nub.ac.bd"),

                currentAccountPicture: Image.asset(
                   ("assets/images/nub_logos.png"),
                ),
              )
          ),
           ListTile(
             onTap: (){
               AlertDialog alart = AlertDialog(
                 title: Text('Profile'),
                 content: Text('Under Development'),
                 actions: [
                   TextButton(onPressed: (){
                     Navigator.of(context).pop(true);
                   },
                       child: Text('Ok'))
                 ],
               );
               showDialog(context: context,
                   builder: (BuildContext context){
                 return alart;
                   });
             },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.blue,
            ),
            title: Text("Profile", style: TextStyle(color: Colors.blue),),
          ),
            ListTile(
              onTap: (){
                AlertDialog alart = AlertDialog(
                  title: Text('University Info'),
                  content: Text('Northern University Bangladesh'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop(true);
                    },
                        child: Text('Ok')
                    )
                  ],
                );
                showDialog(
                    context: context,
                     builder: (BuildContext context){
                     return alart;
                    }
                    );
              },
            leading: Icon(
              CupertinoIcons.book,
              color: Colors.blue,
            ),
            title: Text('University Info',
            style: TextStyle(
              color: Colors.blue
            ),),
          ),
          ListTile(
            onTap: (){
              AlertDialog alart = AlertDialog(
                title: Text('Setting'),
                content: Text('Under Development'),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop(true);

                  }, child: Text('Ok')
                  )
                ],
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return alart;
              });
            },

            leading: Icon(
              CupertinoIcons.settings_solid,
              color: Colors.blue,
            ),
            title: Text('Setting',
            style: TextStyle(
              color: Colors.blue
            ),),
          ),
          ListTile(
            onTap: (){
           //  Navigator.of(context).pop(true);
              AlertDialog alart = AlertDialog(
                title: Text('NUB Blood Bank'),
                content: Text('Under Development'),
                actions: [
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop(true);
                      },
                      child: Text('ok'))
                ],

              );

              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return alart;
              },
              );
          },

            leading: Icon(
              CupertinoIcons.archivebox,
              color: Colors.blue,
            ),
            title: Text('NUB Blood Bank',
            style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            onTap: () {
        AlertDialog alert = AlertDialog(

          title: Row(
              children:[
                Image.asset('assets/images/fahim.png' , height: 20, width: 30, fit: BoxFit.contain,),
                Text("Developer Info"),
        ]
          ),
          content: Text("Hi! I am Fahim Shariar Joy. \n"
              "*E-mail: shariarf39@gmail.com \n"
              "*No. +8801892382840\n"
              "*Satkhira Bangladesh\n"
              "*Study: Computer Science and Engineering\n"
              "*Northern University Bangladesh"),
          actions: [
         TextButton(

            onPressed: () => Navigator.of(context).pop(true),
           child: Text("OK"),
              )
          ],
        );
        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );

            },
            leading: Icon(
              CupertinoIcons.create,
              color: Colors.blue,
            ),
            title: Text('About Developer', style: TextStyle(
              color: Colors.blue
            ),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.arrow_turn_down_left,
              color: Colors.blue,
            ),
            title: Text('Logout', style: TextStyle(color: Colors.blue),),
          )
        ],
      ),
    );
  }
}
