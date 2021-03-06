import 'package:date/CustomClasses/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'namepage.dart';
import 'CustomClasses/user.dart';


class numberInput extends StatefulWidget {
  @override
  _numberInputState createState() => _numberInputState();
}

class _numberInputState extends State<numberInput> {

  var phoneNumber;
  var phoneIsoCode;
  String phone;


  void onPhoneNumberChange(String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

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
                    onPressed: () => Navigator.of(context).pop(true),
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
                      Text("My number is", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white), textAlign: TextAlign.left,),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InternationalPhoneInput(
                        decoration: InputDecoration(border:UnderlineInputBorder()),
                        onPhoneNumberChange: onPhoneNumberChange,
                        initialPhoneNumber: phoneNumber,
                        initialSelection: phoneIsoCode,
                        enabledCountries: ['+1', '+91'],
                        showCountryCodes: true
                    ),
                  )
                ), // to put international number input
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
                      phone = phoneNumber.toString().trim();

                      if(phone != null ){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => nameInput(),));
                        AuthService().verifyPhone(phone);
                      }
                      //new page route
//                      currentUser.phoneNumber=phoneNumber;
                    },
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
          ]
        )
      )
    );
  }
}

