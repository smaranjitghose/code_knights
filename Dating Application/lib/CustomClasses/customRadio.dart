import 'package:flutter/material.dart';

class RadioModel {
  bool isSelected;
  final String buttonText;

  RadioModel(this.isSelected, this.buttonText);
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: Align(
          alignment: Alignment.center,
          child: Column(
          children: <Widget>[
            new Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: _item.isSelected ? Color(0xFFFE3C72) : Colors.white),
                    child: Center(
                      child: Stack(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(_item.buttonText,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: _item.isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 18))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
