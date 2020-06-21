import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomClasses/user.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(currentUser.phoneNumber);
    print(currentUser.name);
    print(currentUser.dob);
    print(currentUser.gender);
  }
  
  double rating;
  double _value = 5; // just to set a default value


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black87],
                            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.darken,
                          child: Image.asset(
                            'assets/images/Rectangle 4.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: IconButton(icon: Icon(Icons.person, color: Colors.white), onPressed: null, ),//page route yet to be given
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
                                    icon: Icon(Icons.favorite, color: Colors.white),
                                    onPressed: null, //change this
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(icon: Icon(Icons.message, color: Colors.white), onPressed: null, ),//page route yet to be given
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Elizabeth Oliver", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600), textAlign: TextAlign.left,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(children: <Widget>[Icon(Icons.location_on, color: Colors.white,size: 20,), Text(" 4 KM away", style: TextStyle(color: Colors.white, fontSize:20),)],),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(

                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      activeTrackColor: Colors.red[700],
                                      inactiveTrackColor: Colors.red[100],
                                      trackShape: RoundedRectSliderTrackShape(),
                                      trackHeight: 4.0,
                                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                                      thumbColor: Colors.redAccent,
                                      overlayColor: Colors.red.withAlpha(32),
                                      overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                                      tickMarkShape: RoundSliderTickMarkShape(),
                                      activeTickMarkColor: Colors.red[700],
                                      inactiveTickMarkColor: Colors.red[100],
                                      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                                      valueIndicatorColor: Colors.redAccent,
                                      valueIndicatorTextStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Slider(
                                      value: _value,
                                      min: 0,
                                      max: 10,
                                      divisions: 10,
                                      label: '$_value',
                                      onChanged: (rating) {
                                        setState(
                                              () {
                                            _value = rating;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             ]
        )
      )
    );
  }
}
