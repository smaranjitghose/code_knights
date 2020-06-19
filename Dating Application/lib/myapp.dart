import 'package:date/genderpage.dart';
import 'package:date/homepage.dart';
import 'package:date/numberpage.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'signinpage.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future getCurrentUser() async {
FirebaseUser _user = await FirebaseAuth.instance.currentUser();
// print("User: ${_user.displayName ?? "None"}");
return _user;}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: loginscreen(),
      theme: ThemeData(
        primaryColor: Color(0xFFFE3C72),
      ),
    );
  }
}
