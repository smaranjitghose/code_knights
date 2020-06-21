import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'CustomClasses/user.dart';
import 'CustomClasses/customRadio.dart';

class genderInput extends StatefulWidget {
  @override
  _genderInputState createState() => _genderInputState();
}

class _genderInputState extends State<genderInput> {
  List<RadioModel> sampleData = new List<RadioModel>();
  String gender;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'MAN'));
    sampleData.add(new RadioModel(false, 'WOMAN'));
    sampleData.add(new RadioModel(false, 'MORE'));
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
                    icon: Icon(Icons.arrow_back_ios,
                        color: Color(0xFFFE3C72), size: 35),
                    onPressed: () =>
                        Navigator.of(context).pop(true), // to add routing later
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Center(
                        child: Text("I identify myself as",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                color: Colors.white)))),
                SizedBox(height: 20),
                // Material(
                //   color: Colors.transparent,
                //   child: InkWell(
                //     child: Container(
                //       width: MediaQuery.of(context).size.width * 0.8,
                //       height: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(50.0),
                //           color: Colors.white),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Text("MAN",
                //               style: TextStyle(
                //                   fontWeight: FontWeight.w400,
                //                   color: Colors.black,
                //                   fontSize: 20))
                //         ],
                //       ),
                //     ),
                //     onTap: () {
                //       //new page route
                //     },
                //   ),
                // ),
                // SizedBox(height: 20),
                // Material(
                //   color: Colors.transparent,
                //   child: InkWell(
                //     child: Container(
                //       width: MediaQuery.of(context).size.width * 0.8,
                //       height: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(50.0),
                //           color: Colors.white),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Text("WOMAN",
                //               style: TextStyle(
                //                   fontWeight: FontWeight.w400,
                //                   color: Colors.black,
                //                   fontSize: 20))
                //         ],
                //       ),
                //     ),
                //     onTap: () {
                //       //new page route
                //     },
                //   ),
                // ),
                // SizedBox(height: 20),
                // Material(
                //   color: Colors.transparent,
                //   child: InkWell(
                //     child: Container(
                //       width: MediaQuery.of(context).size.width * 0.8,
                //       height: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(50.0),
                //           color: Colors.white),
                //       child: Center(
                //         child: Stack(children: <Widget>[
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: <Widget>[
                //               Text("MORE",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.w400,
                //                       color: Colors.black,
                //                       fontSize: 18))
                //             ],
                //           ),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.end,
                //             children: <Widget>[
                //               Padding(
                //                 padding: const EdgeInsets.only(right: 15),
                //                 child: Icon(Icons.arrow_forward_ios),
                //               )
                //             ],
                //           ),
                //         ]),
                //       ),
                //     ),
                //     onTap: () {
                //       //new page route
                //     },
                //   ),
                // ),
                new ListView.builder(
                  shrinkWrap: true,
                  itemCount: sampleData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          sampleData
                              .forEach((element) => element.isSelected = false);
                          sampleData[index].isSelected = true;
                          gender=sampleData[index].buttonText;
                        });
                      },
                      child: new RadioItem(sampleData[index]),
                    );
                  },
                ),
                SizedBox(height: 10),
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
//                      currentUser.gender=gender;
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => homePage()),
                          (Route<dynamic> route) => false);
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
