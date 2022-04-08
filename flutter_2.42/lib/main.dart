import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Counter(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('COUNTER',),
        ),
      ),
    ),
  );
}
class Counter extends StatefulWidget{
  Counter({ Key? key}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 0, left: 0, right: 0),
            child: Align(
              alignment: Alignment.center,
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                ),
                onPressed: (){setState(() {
                  value++;
                });},
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 0, left: 0, right: 0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "$value",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 0, left: 0, right: 0),
            child: Align(
              alignment: Alignment.center,
              child: FloatingActionButton(
                child: Icon(
                  Icons.remove,
                ),
                onPressed: (){setState(() {
                  value--;
                });},
              ),
            ),
          ),
        ],
      ),
    );
  }
}