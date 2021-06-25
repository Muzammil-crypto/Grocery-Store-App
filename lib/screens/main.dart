import 'package:flutter/material.dart';
import 'package:store_app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Store",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
