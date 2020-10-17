import 'package:flutter/material.dart';
import 'package:musicappbvp/utils/constants.dart';

class OAuthLogin extends StatefulWidget {
  @override
  _OAuthLoginState createState() => _OAuthLoginState();
}

class _OAuthLoginState extends State<OAuthLogin> {
  _loginWithGmail() {}
  _loginWithFB() {}

  _createButton(String txt, String url, Function fn) {
    return Center(
      child: Container(
        width: deviceSize.width * 0.75,
        height: deviceSize.height * 0.10,
        child: RaisedButton(
          color: Colors.tealAccent,
          onPressed: () {
            fn();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Image.network(url),
              ),
              Text(
                txt,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

  Size deviceSize;
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.network(Constants.LEFT_BORDER),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.network(Constants.RIGHT_BORDER),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _createButton("Login", Constants.GOOGLE_ICON, _loginWithGmail),
                Divider(height: 50),
                _createButton("Login", Constants.FB_ICON, _loginWithFB)
              ],
            )
          ],
        ),
      ),
    );
  }
}
