import 'package:date/genderpage.dart';
import 'package:date/numberpage.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: loginscreen(),
    );
  }
}
