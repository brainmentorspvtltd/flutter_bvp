import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  _getContainer(var color, double height, double width) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  _getBanner(String msg, var loc) {
    return Banner(
      message: msg,
      location: loc,
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _getContainer(Colors.amberAccent, 300, 300),
          _getBanner("TOPLEFT", BannerLocation.topStart),
          _getBanner("TOPRIGHT", BannerLocation.topEnd),
          _getBanner("BOTTOMLEFT", BannerLocation.bottomStart),
          _getBanner("BOTTOMRIGHT", BannerLocation.bottomEnd),
          Positioned(
            bottom: media.height - 150,
            right: media.width - 150,
            child: Icon(
              Icons.phone,
              size: 60,
            ),
          )

//          _getContainer(Colors.green, 200, 200),
//          _getContainer(Colors.blueAccent, 100, 100),
        ],
      ),
    );
  }
}
