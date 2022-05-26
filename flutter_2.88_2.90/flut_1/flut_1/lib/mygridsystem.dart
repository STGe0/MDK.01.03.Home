import 'dart:math';
import 'package:flut_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystem extends StatefulWidget {
  const MyGridSystem({Key? key}) : super(key: key);

  @override
  _MyGridSystem createState() => _MyGridSystem();
}

class _MyGridSystem extends State<MyGridSystem> {
  final List<Map> myProd = List.generate(
      25, (index) => {'id': index, 'name': '${Random().nextInt(2)}'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: 25,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (myProd[index]['name'] == "0") {
                  myProd[index]['name'] = "1";
                } else {
                  myProd[index]['name'] = "0";
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(myProd[index]['name']),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(60),
              ),
            ),
          );
        },
      ),
    );
  }
}
