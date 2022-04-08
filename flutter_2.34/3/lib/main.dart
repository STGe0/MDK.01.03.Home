import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '3 Задание',
    home: Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom:0, left:0, right:0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Test your',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'reaction speed',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 120, bottom:0, left:0, right:0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  color: Colors.grey,
                  width: 350,
                  height: 160,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '167 ms',
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 100, bottom:0, left:0, right:0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  color: Colors.grey,
                  width: 200,
                  height: 130,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'START',
                      style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    ),
  );
}
