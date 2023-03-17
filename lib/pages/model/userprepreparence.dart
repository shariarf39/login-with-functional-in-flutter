import 'dart:convert';

import 'package:login_demo/pages/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberUSer
{
  static Future<void> saveremember(User userinfo) async
  {
SharedPreferences preferences = await SharedPreferences.getInstance();
String userJson= jsonEncode(userinfo.toJson());

await preferences.setString("NUB_NOTCE", userJson);
  }
}