import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {

  double distance;
  double _value = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF303030),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Color(0xFFFE3C72), size: 35),
                        onPressed: null,// to add routing later
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("SETTINGS", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),),
                      ),
                    )
                  ],
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: InkWell(
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.favorite, color: Color(0xFFFE3C72),),
                                  Icon(Icons.add, color: Color(0xFFFE3C72),)
                                ],
                              ),
                            ),
                            Text("Unlimited likes & more", style: TextStyle(color: Color(0xFFA4A9AD), fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                    ),
                    onTap: null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Phone Number", style: TextStyle(color: Color(0xFFA4A9AD), fontWeight: FontWeight.w600),),
                              Text("+9100000000", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: InkWell(
                    onTap: null,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Location", style: TextStyle(color: Color(0xFFA4A9AD), fontWeight: FontWeight.w600),),
                                Text("My Current Location", style: TextStyle(color: Color(0xFF20A39E), fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: InkWell(
                    onTap: null,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Show Me", style: TextStyle(color: Color(0xFFA4A9AD), fontWeight: FontWeight.w600),),
                                Text("Women", style: TextStyle(color: Color(0xFFFE3C72), fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Show Me", style: TextStyle(color: Color(0xFFA4A9AD), fontWeight: FontWeight.w600),),
                              Text(_value.toString() + "Kms" , style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                        SliderTheme(
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
                            max: 100,
                            divisions: 10,
                            label: '$_value' + 'Kms',
                            onChanged: (distance) {
                              setState(
                                    () {
                                  _value = distance;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Help & Support", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black87,))
                          ],
                        ),
                      ),
                      onTap: (){
                        //new page route
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 30),
                  child: Material(
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
                            Text("LOGOUT", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,))
                          ],
                        ),
                      ),
                      onTap: (){
                        //new page route
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

