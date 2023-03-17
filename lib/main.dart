import 'package:flutter/material.dart';
import 'package:login_demo/pages/activity_pages/notice_activity.dart';
import 'package:login_demo/pages/homepage.dart';
import 'package:login_demo/pages/login.dart';
import 'package:login_demo/pages/registration.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/homepage",
      routes: {
        "/": (context) => login(),
        "/registration": (context) => registration(),
        "/homepage": (context) => homepage(),
        "/notice_activity": (context) => notice_activity(),
      },
    );
  }
}
