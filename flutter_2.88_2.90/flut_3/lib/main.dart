import 'package:flutter/material.dart';
import 'package:flut_3/mygridsystem.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3 Задание',
      home: Scaffold(
        appBar: AppBar(
          title: Text('3 Задание'),
          centerTitle: true,
        ),
        body: MyGridSystem(),
      ),
    );
  }
}