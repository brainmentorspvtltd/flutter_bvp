import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class I18NDemo extends StatefulWidget {
  @override
  _I18NDemoState createState() => _I18NDemoState();
}

class _I18NDemoState extends State<I18NDemo> {
  bool flag = false;
  _changeLang() {
    if (flag) {
      EasyLocalization.of(context).locale = Locale('en', 'US');
    } else {
      EasyLocalization.of(context).locale = Locale('hi', 'IN');
    }
    flag = !flag;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr('msg2'),
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          Text(
            tr('msg'),
            style: TextStyle(fontSize: 32),
          ),
          Divider(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              _changeLang();
            },
            child: Text('Change Lang'),
          )
        ],
      ),
    );
  }
}
