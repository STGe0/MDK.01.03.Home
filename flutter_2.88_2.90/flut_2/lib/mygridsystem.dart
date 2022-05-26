import 'dart:math';
import 'package:flut_2/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystem extends StatefulWidget {
  const MyGridSystem({Key? key}) : super(key: key);

  @override
  _MyGridSystem createState() => _MyGridSystem();
}

class _MyGridSystem extends State<MyGridSystem> {
  final List<Map> myProd = List.generate(
      25, (index) => {'id': index, 'name': '${Random().nextInt(40)+10}'});
        final List<Map> myProd2 = List.generate(
      25, (index) => {'id': index, 'name': '${Random().nextInt(40)+10}'});
        final List<Map> myProd3 = List.generate(
      25, (index) => {'id': index, 'name': ''});

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
                int intValue1 = int.parse(myProd[index]['name']);
                int intValue2 = int.parse(myProd2[index]['name']);
                int intValue3 = intValue1 + intValue2;
                myProd3[index]['name'] = intValue3.toString();
              });
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(myProd[index]['name'] + "+" + myProd2[index]['name'] + "=" + myProd3[index]['name']),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          );
        },
      ),
    );
  }
}
