import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class massaging extends StatefulWidget {
  @override
  _massagingState createState() => _massagingState();
}

class _massagingState extends State<massaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF303030),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: IconButton(icon: Icon(Icons.person, color: Colors.white), onPressed: null, ),//page route yet to be given
                    ),
                    Container(
                      child: IconButton(icon: Icon(Icons.favorite, color: Colors.white), onPressed: null, ),//page route yet to be given
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF4938F0),
                              blurRadius: 23,
                              spreadRadius: 5,
                              offset: Offset.zero
                          )
                        ],
                        color: Color(0xFF576EFF),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.message, color: Colors.white),
                          onPressed: null, //change this
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                  _chatCards(context, "assets/images/DP 1.png", "Curabitur vulputate arcu odio, ac facilisis diam", "Ruth Jackson", "1 min ago"),
                  _chatCards(context, "assets/images/DP 1.png", "Curabitur vulputate arcu odio, ac facilisis diam", "Ruth Jackson", "1 min ago"),
                  _chatCards(context, "assets/images/DP 1.png", "Curabitur vulputate arcu odio, ac facilisis diam", "Ruth Jackson", "1 min ago")
                  ],
                ),
              ),
            ) // to be changed to ListView builder after firebase
          ],
        ),
      ),
    );
  }
}

Widget _chatCards(BuildContext context ,String imgPath, String lastconvo, String name, String time){
  return Container(
    padding: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width,
    height: 100,
    child: Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white)),
                Text(lastconvo, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF868686)), overflow: TextOverflow.fade,),
                Text(time, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        )
      ],
    ),
  );
}