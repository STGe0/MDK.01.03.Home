import 'dart:math';
import 'package:flut_3/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystem extends StatefulWidget {
  MyGridSystem({Key? key}) : super(key: key);
  @override
  _MyGridSystem createState() => _MyGridSystem();
}

class _MyGridSystem extends State<MyGridSystem> { 
  List myListInt = <int>[];

  @override
  Widget build(BuildContext context) {
    checkNumbers();
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 5 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(myListInt[index].toString()),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
      ),
    );
  }

    void checkNumbers() => setState(() {
        var intval = Random().nextInt(50) + 1;
        myListInt.add(intval);
        for (var i = 1; i < 50; i++) {
          bool bl = true;
          do {
            bool check = false;
            intval = Random().nextInt(50) + 1;
            for (var j = 0; j < i; j++) {
              if (myListInt[j] == intval) {
                check = true;
              }
            }
            if (check) {
            } else {
              myListInt.add(intval);
              bl = false;
            }
          } while (bl);
          print(myListInt[i]);
        }
      });
}
