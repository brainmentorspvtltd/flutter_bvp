import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'First App 2020',
    home: SafeArea(
      child: Text(
        'Hello Flutter',
        style: TextStyle(color: Colors.yellowAccent),
      ),
    ),
  ));
}
