import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'User/user.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var phoneNumber;
  var phoneIsoCode;

  final passwordController = TextEditingController();
  final _codeController = TextEditingController();

  Future<bool> loginUser(String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(minutes: 2),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();
          AuthResult result = await _auth.signInWithCredential(credential);
          FirebaseUser user = result.user;
          if (user != null) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => homePage()),
                (Route<dynamic> route) => false);
          } else {
            print("Error");
          }
        },
        verificationFailed: (AuthException exception) {
          print('exception');
        },
        codeSent: (String verificationId, [int forceResendingToken]) {
          // print("hi  ");
          showDialog(
              context: _scaffoldKey.currentContext,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Enter The Code"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    MaterialButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.black,
                      onPressed: () async {
                        final code = _codeController.text.trim();
                        AuthCredential credential =
                            PhoneAuthProvider.getCredential(
                                verificationId: verificationId, smsCode: code);
                        AuthResult result =
                            await _auth.signInWithCredential(credential);
                        FirebaseUser user = result.user;
                        if (user != null) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => homePage()),
                              (Route<dynamic> route) => false);
                        } else {
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: null);
  }

  @override
  void dispose() {
    passwordController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = internationalizedPhoneNumber;
      phoneIsoCode = isoCode;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
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
                          icon: Icon(Icons.arrow_back_ios,
                              color: Color(0xFFFE3C72), size: 35),
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
                            Text(
                              "My number is",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: InternationalPhoneInput(
                            decoration:
                                InputDecoration(border: UnderlineInputBorder()),
                            onPhoneNumberChange: onPhoneNumberChange,
                            initialPhoneNumber: phoneNumber,
                            initialSelection: phoneIsoCode,
                            enabledCountries: ['+1', '+91'],
                            showCountryCodes: true),
                      )), // to put international number input
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Color(0xFFFE3C72)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("CONTINUE",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                          onTap: () {
                            //new page route
                            print(phoneNumber);
                            final phone = phoneNumber.toString().trim();
                            loginUser(phone, context);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  )
                ])));
  }
}
