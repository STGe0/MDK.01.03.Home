import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_2_60/custom_icons.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MyBody(),
        ),
      ),
    );

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<String> _array = [];
  num value = 0;
  int value2 = 0;
  int val = -1;
  String str = "";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        final int iy = 1;
        value = pow(2, value2);

        if (iy == 1) {
          value = pow(2, value2);
          BigInt bi = BigInt.from((pow(2, value2)));
          str = "$bi";
          value2++;
          val++;
        }
        if (val % 2 == 0) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "2^$val=$str",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text("Число 2 перемножается $val раз"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(CustomIcons.backup),
              ),
              Divider(
                thickness: 15,
                color: Colors.black,
              )
            ],
          );
        } else {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "2^$val=$str",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text("Число 2 перемножается $val раз"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(CustomIcons.accessibility),
              ),
              Divider(
                thickness: 15,
                color: Colors.black,
              )
            ],
          );
        }
      },
    );
  }
}
