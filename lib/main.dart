import 'package:flutter/material.dart';
import 'package:store_app/RatingDetails.dart';
import 'package:store_app/drawer.dart';
import 'package:store_app/homepage.dart';

import 'inventory.dart';

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
