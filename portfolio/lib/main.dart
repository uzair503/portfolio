import 'package:flutter/material.dart';
import 'package:portfolio/myhome.dart';
void main() {
  runApp( myApp());
}


class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myhome(),
    );
  }
}
