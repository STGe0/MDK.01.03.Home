import 'package:flutter/material.dart';
import 'dart:math' as Match;

class AnimationPage1 extends StatefulWidget{
  const AnimationPage1({Key? key}) : super(key: key);

  @override
  _AnimationPage1State createState() => _AnimationPage1State();
}
class _AnimationPage1State extends State<AnimationPage1>{
  int intr2 = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Анимация1')),
      body: Center(child: Column(children: [
        SizedBox(height:75),
        SizedBox(height:75),
        AnimationWidget(),
      ],)),
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
  int intr3 = 0;
  late AnimationController controller;
  late Animation<double> rotation;

  @override
  void initState(){
    controller = AnimationController(
      vsync: this,
    duration: Duration(milliseconds: 2000),);
    rotation = Tween(begin: 0.0, end: 2 * Match.pi).animate(controller);

    controller.addListener(() {

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
    
return Column(children: [
  Text("Всего проигралась анимация: ${intr3}"),
  SizedBox(height:50),
  AnimatedBuilder(
          animation: controller,
          builder: (context, child){
          return Transform.rotate(
          angle: rotation.value,
          child: _MyContainer(),
        );
      },
    ),
    SizedBox(height:50),
    ElevatedButton(child: Text('Начать!'), onPressed:(){ 
      Future.delayed(const Duration(milliseconds: 100), () {
        setState(() {
          controller.forward();
        });
      });
      Future.delayed(const Duration(milliseconds: 2100), () {
        setState(() {
          controller.reset();
          controller.forward();
          intr3++;
        });
      });
      Future.delayed(const Duration(milliseconds: 4100), () {
        setState(() {
          controller.reset();
          controller.forward();
          intr3++;
        });
      });
      Future.delayed(const Duration(milliseconds: 6100), () {
        setState(() {
          controller.reset();
          controller.forward();
          intr3++;
        });
      });
      Future.delayed(const Duration(milliseconds: 8100), () {
        setState(() {
          controller.reset();
          controller.forward();
          intr3++;
        });
      });
      Future.delayed(const Duration(milliseconds: 10100), () {
        setState(() {
          intr3++;
        });
      });
        } 
        )
],);

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