import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class chatPage extends StatefulWidget {
  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(),// martirals of chat will go in here
          Container(
            color: Color(0xFF303030),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Color(0xFF303030),
                  child: _nameCardBuilder(context, "assets/images/DP 1.png", "Ruth Jackson")
                ),
                Container(
                  color: Color(0xFF303030),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  textCapitalization: TextCapitalization.sentences,
                                  decoration: InputDecoration(
                                    hintText: "Type your massage here...",
                                  ),
                                  maxLines: null,
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFF576EFF),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.favorite, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _nameCardBuilder(BuildContext context, String imgPath, String name){
  return Row(
    children: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgPath),
          ),
          shape: BoxShape.circle
        ),
      ),
      SizedBox(width: 15),
      Text(name, style: TextStyle(color: Color(0xFF576EFF), fontWeight: FontWeight.w400, fontSize: 22),)
    ],
  );
}