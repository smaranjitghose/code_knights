import 'package:date/genderpage.dart';
import 'package:date/numberpage.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'namepage.dart';
import 'dobpage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: dobInput(),
      theme: ThemeData(
        primaryColor: Color(0xFFFE3C72),
      ),
    );
  }
}
