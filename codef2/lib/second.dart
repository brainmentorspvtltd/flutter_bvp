import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  _getContainer(var colorName) {
    return Container(width: 100, height: 100, color: colorName);
  }

  _getIcon(var iconObj) {
    return Icon(
      iconObj,
      size: 30,
    );
  }

  _getText(String str, double size) {
    return Text(
      str,
      style: TextStyle(fontSize: size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layout example'),
      ),
      body: //Row(
          Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        //verticalDirection: VerticalDirection.down,
        //textDirection: TextDirection.rtl,
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        //textBaseline: TextBaseline.ideographic,
        //TextBaseline.ideographic (alphabetic)
        //crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //  .spaceEvenly, // start, end, center, spaceBetween, spaceAround
        children: <Widget>[
          // _getText("Brain Mentors", 30),
          // _getText("你好", 20),
          //_getText("BVP", 40),
          _getContainer(Colors.cyan),
          _getContainer(Colors.red),
          _getIcon(Icons.email),
          _getIcon(Icons.play_circle_filled)
          //_getContainer(Colors.green)
        ],
      ),
    );
  }
}
