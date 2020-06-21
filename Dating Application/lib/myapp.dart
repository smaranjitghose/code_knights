import 'package:date/CustomClasses/auth.dart';
import 'package:date/CustomClasses/user.dart';
import 'package:date/genderpage.dart';
import 'package:date/homepage.dart';
import 'package:date/numberpage.dart';
import 'package:date/wrapper.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:date/CustomClasses/user.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: wrapper(),
        theme: ThemeData(
          primaryColor: Color(0xFFFE3C72),
        ),
      ),
    );
  }
}
