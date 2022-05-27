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
  late Animation<Offset> _animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      vsync: this,
    duration: Duration(seconds: 3),);
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, -5.0),).animate(CurvedAnimation(parent: controller, curve: Curves.easeInQuint));

    controller.addListener(() {
      if(controller.status == AnimationStatus.completed){

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
        return Align(
          alignment: Alignment.bottomCenter,
          child: SlideTransition(
            position: _animation,
            child: Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("images/1.png")),
              ),
            ),
          ),
        );
      },
    );
  }
}