import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dobpage.dart';
import 'CustomClasses/user.dart';

class nameInput extends StatefulWidget {

  @override
  _nameInputState createState() => _nameInputState();
}

class _nameInputState extends State<nameInput> {

  String name = '';

  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
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
                      Text("I am known as", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white), textAlign: TextAlign.left,),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        controller: nameController,
                        textCapitalization: TextCapitalization.words,
                        cursorColor: Color(0xFFFE3C72),
                        autocorrect: false,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w300),
                        onChanged: (val){
                          setState(() => name = val);
                        },
                      )
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
                          Text("CONTINUE", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white,))
                        ],
                      ),
                    ),
                    onTap: (){
                      //new page route
//                      currentUser.name=nameController.text;
                      Navigator.push(context, MaterialPageRoute(builder: (context) => dobInput(),));
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
