import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infoPage extends StatefulWidget {
  @override
  _infoPageState createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle 4.png"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF707070),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .80,
                color: Colors.transparent,
                child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFE3C72), size: 40), alignment: Alignment.topLeft,),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                color: Color(0xFF707070),
                child: Column(
                  children: <Widget>[  // this section should be changed according to the firebase data
                    Align(alignment: AlignmentDirectional.centerStart,child: Text("Ruth Jackson", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[Icon(Icons.location_on, color: Color(0xFF95989A)), SizedBox(width: 5), Text("4KM away", style: TextStyle(color: Color(0xFF95989A)),)],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[Icon(Icons.school, color: Color(0xFF95989A)), SizedBox(width: 5), Text("4KM away", style: TextStyle(color: Color(0xFF95989A)),)],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFF95989A),
                      ),
                    ),
                    Text(
                      "Here comes the bio -Curabitur vulputate arcu odio, ac facilisis diam accumsan ut. Ut imperdiet et leo in vulputate. Sed eleifend lacus eu sapien sagittis imperdiet. Etiam tempor mollis augue, ut tincidunt ex interdum eu. Pellentesque rhoncus lectus sed pos.",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Align(alignment: Alignment.centerLeft, child: Text("Spotify Top Picks", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFF95989A),
                      ),
                    ),
                    Align(alignment: Alignment.centerLeft, child: Text("Instagram Stories", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w200),)),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
