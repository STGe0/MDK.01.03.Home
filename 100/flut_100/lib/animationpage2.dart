import 'package:flutter/material.dart';
import 'dart:math' as Match;

class AnimationPage2 extends StatelessWidget {
  const AnimationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Анимация2')),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 75),
          SizedBox(height: 75),
          AnimationWidget(),
        ],
      )),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  int intr3 = 0;
  late AnimationController controller;
  late Animation<Offset> rotation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    rotation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1.5, 0.0),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn));

    controller.addListener(() {});

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Всего проигралась анимация: ${intr3}"),
        SizedBox(height: 50),
        AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Align(
              alignment: Alignment.centerLeft,
              child: SlideTransition(
                position: rotation,
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("images/1.png")),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(height: 50),
        ElevatedButton(
            child: Text('Начать!'),
            onPressed: () {
              try {
                Future.delayed(const Duration(milliseconds: 100), () {
                  setState(() {
                    controller.forward();
                  });
                });
              } catch (e) {}
              try {
                Future.delayed(const Duration(milliseconds: 2100), () {
                  setState(() {
                    controller.reset();
                    controller.forward();
                    intr3++;
                  });
                });
              } catch (e) {}
              try {
                Future.delayed(const Duration(milliseconds: 4100), () {
                  setState(() {
                    controller.reset();
                    controller.forward();
                    intr3++;
                  });
                });
              } catch (e) {}
              try {
                Future.delayed(const Duration(milliseconds: 6100), () {
                  setState(() {
                    controller.reset();
                    controller.forward();
                    intr3++;
                  });
                });
              } catch (e) {}
              try {
                Future.delayed(const Duration(milliseconds: 8100), () {
                  setState(() {
                    controller.reset();
                    controller.forward();
                    intr3++;
                  });
                });
              } catch (e) {}
              try {
                Future.delayed(const Duration(milliseconds: 10100), () {
                  setState(() {
                    intr3++;
                  });
                });
              } catch (e) {}
            })
      ],
    );
  }
}