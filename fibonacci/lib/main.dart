import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Бесконечный список чисел Фибоначчи'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: MyBody(),
      ),
    ),
  ),
);

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<BigInt> _array = [BigInt.from(0), BigInt.from(1)];
  BigInt value = BigInt.from(0);
  int index1 = 0;
  int index2 = 1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final int index = i ~/ 2;

        if (index >= _array.length) {
          value = _array[index1] + _array[index2];
          _array.add(value);
          index1++;
          index2++;
        }

        return ListTile(title: Text(_array[index].toString()));
      },
    );
  }
}
