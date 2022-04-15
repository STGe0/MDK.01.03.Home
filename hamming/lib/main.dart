import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Бесконечная последовательность чисел Хэмминга'),
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
  final List<BigInt> _array = [BigInt.from(1)];
  BigInt value = BigInt.from(2);
  BigInt valuen = BigInt.from(0);
  BigInt value01 = BigInt.from(0);
  BigInt value1 = BigInt.from(1);
  BigInt value3 = BigInt.from(3);
  BigInt value5 = BigInt.from(5);
  BigInt value0 = BigInt.from(0);
  int index1 = 0;
  bool bl = true;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final int index = i ~/ 2;
        if (index >= _array.length) {
          bl = true;
          do {
            valuen = value;
            value01 = value.remainder(BigInt.two);
            while (value01 == value0) {
              value = BigInt.from(value / BigInt.two);
              value01 = value.remainder(BigInt.two);
            }
            value01 = value.remainder(value3);
            while (value01 == value0) {
              value = BigInt.from(value / value3);
              value01 = value.remainder(value3);
            }
            value01 = value.remainder(value5);
            while (value01 == value0) {
              value = BigInt.from(value / value5);
              value01 = value.remainder(value5);
            }
            if (value == value1) {
              _array.add(valuen);
              bl = false;
            } else {}
            value = valuen + value1;
          } while (bl);
        }
        return ListTile(title: Text(_array[index].toString()));
      },
    );
  }
}
