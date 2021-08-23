import 'package:example1/page/LaunchScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "武将增强",
      theme: ThemeData.light(),
      home: LaunchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
