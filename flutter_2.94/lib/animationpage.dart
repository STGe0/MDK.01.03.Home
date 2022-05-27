import 'package:flutter/material.dart';
import 'dart:math' as Match;

class AnimationPage extends StatelessWidget{
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Анимация')),
      body: Center(
        child: AnimationWidget(),
      ),
    );
  }
}

class AnimationWidget extends StatefulWidget{
   const AnimationWidget({
    Key? key,
  }) : super (key: key);

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double> rotation;

  @override
  void initState(){
    bool intr = true;
    bool intr2 = true;
    controller = AnimationController(
      vsync: this,
    duration: Duration(milliseconds: 6000),);
    rotation = Tween(begin: 0.0, end: 6 * Match.pi).animate(controller);

    controller.addListener(() {
      if(controller.status == AnimationStatus.completed && intr){
        setState(() {
          intr = false;
          intr2 = true;
          rotation = Tween(begin: 0.0, end: -4 * Match.pi).animate(controller);
        });
        controller.repeat();
      }
      if(controller.status == AnimationStatus.completed && intr2){
        setState(() {
          intr2 = false;
          intr = true;
          rotation = Tween(begin: 0.0, end: 6 * Match.pi).animate(controller);
        });
        controller.repeat();
      }
    });

    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child){
        return Transform.rotate(
          angle: rotation.value,
          child: _MyContainer(),
        );
      },
    );
  }
}

class _MyContainer extends StatelessWidget{
  const _MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Center(
        child: Text('TEXT'),
      ),
    );
  }
}