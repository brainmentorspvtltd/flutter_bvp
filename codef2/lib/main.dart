import 'package:firstapp_2020/stackdemo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //theme: ThemeData.dark(),
      //theme: ThemeData.light(),
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        // textTheme: TextTheme()
      ),
      title: 'First App',
      debugShowCheckedModeBanner: false,
      //home: Welcome()
      home: StackDemo()
      //home: SafeArea(child: Text('Hello Flutter')),
      ));
}
