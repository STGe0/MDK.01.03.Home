import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: '1 Задание',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Sample Code'),
        ),
        body: Center(
          child: Container(
            color: Colors.orange,
            width: 250,
            height: 250,
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: new BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              ),
              ),
            ),
          ),
        ),
      ),
  );
}

