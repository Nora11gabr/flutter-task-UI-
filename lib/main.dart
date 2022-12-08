import 'package:flutter/material.dart';
import 'package:fluttertasklev/screens/homepage.dart';

void main(List<String> args) {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
