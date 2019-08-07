import 'package:flutter/material.dart';
import "login.dart";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selfie Bazaar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[800],
      ),
      home: loginpage(),
    );
  }
}