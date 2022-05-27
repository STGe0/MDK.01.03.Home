import 'package:flutter/material.dart';
import 'package:flut_1/animationpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Animation',
      home: AnimationPage(),
    );
  }
}