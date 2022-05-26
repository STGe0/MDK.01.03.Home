import 'package:flutter/material.dart';
import 'package:flut_1/mygridsystem.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4 Задание. Ноль или один',
      home: Scaffold(
        appBar: AppBar(
          title: Text('4 Задание. Ноль или один'),
          centerTitle: true,
        ),
        body: MyGridSystem(),
      ),
    );
  }
}