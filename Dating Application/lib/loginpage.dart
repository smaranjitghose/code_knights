import 'package:date/CustomClasses/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'numberpage.dart';


class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/BG.png"),
              fit: BoxFit.fill
            ),
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      RichText(text: TextSpan(
                       children: <TextSpan>[
                         TextSpan(text: "By tapping Log In, you agree with our ", style: TextStyle(fontSize: 13)),
                         TextSpan(
                             text: "Terms of Service",
                             style: TextStyle(
                                 fontSize: 13,
                                 decoration: TextDecoration.underline
                             ),
                             recognizer: TapGestureRecognizer()..onTap = () async {
                               const url = "https://www.google.com"; // to th given location
                                 if (await canLaunch(url)){
                                   await launch(url);}
                                 else {
                                   throw "Could not reach the page";
                                 }
                             }
                         ),
                         TextSpan(text: " and ", style: TextStyle(fontSize: 13)),
                         TextSpan(
                             text: "Privacy Policy",
                             style: TextStyle(
                                 fontSize: 13,
                                 decoration: TextDecoration.underline
                             ),
                             recognizer: TapGestureRecognizer()..onTap = () async {
                               const url = "https://www.google.com"; // to th given location
                               if (await canLaunch(url)){
                                 await launch(url);
                               }else {
                                 throw "Could not reach the page";
                               }
                             }
                          ),
                       ]
                      )),
                      SizedBox(height: 20),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Color(0xFF3B5998)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LOGIN WITH FACEBOOK", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white)),
                              ],
                            ),
                          ),
                          onTap: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null){
                              print('error');
                            }else{
                              print("signed in");
                              print(result.uid);
                            }
                            //link to the facebook API
                          },
                        ),
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
                                Text("LOGIN IN WITH PHONE NUMBER", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white))
                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => numberInput(),));
                          },
                        ),
                      ),
                      SizedBox(height: 30),
                      RichText(
                        text: TextSpan(
                          text: "Trouble Logging In?",
                          recognizer: TapGestureRecognizer()..onTap = () async{
                            const url = "http://www.google.com";
                            if (await canLaunch(url)){
                              await launch(url);
                            }else{
                              throw "Could not reach the page";
                            }
                          }
                        ),
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
