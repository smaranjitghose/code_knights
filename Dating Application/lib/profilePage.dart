import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF303030),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
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
                        icon: Icon(Icons.person, color: Colors.white),
                        onPressed: null, //change this
                      ),
                    ),
                  ),
                  Container(
                    child: IconButton(icon: Icon(Icons.favorite, color: Colors.white), onPressed: null, ),//page route yet to be given
                  ),
                  Container(
                    child: IconButton(icon: Icon(Icons.message, color: Colors.white), onPressed: null, ),//page route yet to be given
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 4.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 135,
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.settings, color: Color(0xFF576EFF)),
                          onPressed: null,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.photo_camera, color: Color(0xFF576EFF)),
                          onPressed: null,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.mode_edit, color: Color(0xFF576EFF)),
                          onPressed: null,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
