import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'genderpage.dart';

class dobInput extends StatefulWidget {
  @override
  _dobInputState createState() => _dobInputState();
}

class _dobInputState extends State<dobInput> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF303030),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFE3C72), size: 35),
                    onPressed: () => Navigator.of(context).pop(true),// to add routing later
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Wish me on", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white), textAlign: TextAlign.left,),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    child: Center()
                ),
                SizedBox(height: 20),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xFFFE3C72)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("CONTINUE", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,))
                        ],
                      ),
                    ),
                    onTap: (){
                      //new page route
                      Navigator.push(context, MaterialPageRoute(builder: (context) => genderInput(),));
                    },
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

