import 'package:flutter/material.dart';
import 'pages/registerformpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Форма заявки на работу в зоопарке',
      home: RegisterFormPage(),
    );
  }
}