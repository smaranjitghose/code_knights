import 'package:date/homepage.dart';
import 'package:date/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:date/CustomClasses/user.dart';
import 'package:date/homepage.dart';

class wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if(user == null){
      return loginscreen();
    }else{
      return homePage();
    }
  }
}
