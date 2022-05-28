import 'package:flut_100/animationpage1.dart';
import 'package:flutter/material.dart';
import 'animationpage2.dart';
import 'animationpage1.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Задание 100',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Задание 100'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(children: [
          SizedBox(height: 250,),
        ElevatedButton(
          child: const Text('Первая анимация - вращение квадрата с текстом внутри'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AnimationPage1()),
            );
          },
        ),
        SizedBox(height: 25,),
        ElevatedButton(
          child: const Text('Вторая анимация - движение по горизонтали'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AnimationPage2()),
            );
          },
        ),
        ],)
      ),
    );
  }
}