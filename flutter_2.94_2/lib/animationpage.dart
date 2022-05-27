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
  late Animation<Size> _sizeAnimation;

  @override
  void initState(){
    bool intr = true;
    bool intr2 = true;
    controller = AnimationController(
      vsync: this,
    duration: Duration(milliseconds: 1000),);
    _sizeAnimation = Tween<Size>(begin: Size(100, 100), end: Size(130, 130)).animate(controller);

    controller.addListener(() {
      if(controller.status == AnimationStatus.completed && intr){
        setState(() {
          intr = false;
          intr2 = true;
          _sizeAnimation = Tween<Size>(begin: Size(130, 130), end: Size(100, 100)).animate(controller);
        });
        controller.repeat();
      }
      if(controller.status == AnimationStatus.completed && intr2){
        setState(() {
          intr2 = false;
          intr = true;
          _sizeAnimation = Tween<Size>(begin: Size(100, 100), end: Size(130, 130)).animate(controller);
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
        return Container(
          width: _sizeAnimation.value.width,
          height: _sizeAnimation.value.height,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("images/1h.png")),
          ),
        );
      },
    );
  }
}