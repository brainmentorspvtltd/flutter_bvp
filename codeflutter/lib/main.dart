import 'package:flutter/material.dart';

import './one.dart';

void main() {
  runApp(MaterialApp(
      //theme: ThemeData.dark(),
      //theme: ThemeData.light(),
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.light,
        primaryColor: Colors.yellow,
        // textTheme: TextTheme()
      ),
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: MyWidget()
      //home: SafeArea(child: Text('Hello Flutter')),
      ));
}
