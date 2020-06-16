import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dobInput extends StatefulWidget {
  @override
  _dobInputState createState() => _dobInputState();
}

class _dobInputState extends State<dobInput> {

  MaterialColor buttonTextColor = const MaterialColor(
    0xFF4A5BF6,
    const <int, Color>{
      50: const Color(0xFFFE3C72),
      100: const Color(0xFFFE3C72),
      200: const Color(0xFFFE3C72),
      300: const Color(0xFFFE3C72),
      400: const Color(0xFFFE3C72),
      500: const Color(0xFFFE3C72),
      600: const Color(0xFFFE3C72),
      700: const Color(0xFFFE3C72),
      800: const Color(0xFFFE3C72),
      900: const Color(0xFFFE3C72),
    },
  );

  DateTime _dateTime;
//  var selected_color = Color(0xFFA4A9AD);
  var _showDate;

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
//                onPressed: Navigator.pop(context),// to add routing later
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
                    child: InkWell(
                      child: Text(_dateTime == null ? "DD/MM/YYYY" : _showDate.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFFFE3C72),
                              decorationThickness: 3.00
                            )
                        ),
                      onTap: (){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now().add(Duration(days: 365)),
                          firstDate: DateTime.now().add(Duration(days: 365)),
                          lastDate: DateTime(2100),
                          builder: (BuildContext context, Widget child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: const Color(0xFFFE3C72),
                                accentColor: const Color(0xFFFE3C72),
                                colorScheme: ColorScheme.light(primary: Color(0xFFFE3C72)),
                                buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary)
                              ),
                              child: child,
                            );
                            },
                        ).then((date) => setState((){
                          _dateTime = date;
                          _showDate  = DateFormat.yMMMMd("en-US").format(_dateTime);
                        }));
                        },
                    )
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
