import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musicappbvp/screens/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(); // Aug 2020
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, title: 'MusicApp',
    //home: Music()
    home: SplashScreen(),
  ));
}
