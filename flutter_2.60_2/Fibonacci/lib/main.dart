import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
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
  final List<String> _array = [];
  final List<String> _array2 = [];
  var value1 = 0;
  var value = 0;
  var value2 = 1;
  int integ1 = 0;
  int integ2 = 0;
  int integ3 = 1;
  int integ4 = 0;
  String str = "";
  String str2 = "1";
  BigInt bi3 = BigInt.from(1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final int index = i ~/ 2;

        if (index >= _array.length) {
          _array.addAll(['$value1']);
          str = "$value1";
          if(integ1 == 1)
            {
              value1 = value2 + value1;
              str = "$value1";
              _array2.addAll(['$value1']);
              integ1++;
            }
          else
            {
              if(integ2 == 0)
                {
                  value1 = value + value1;
                  str = "$value1";
                  _array2.addAll(['$value1']);
                  integ2++;
                }
              else{
                if(integ4 == 0)
                  {
                    BigInt bi2 = BigInt.from(value + value1);
                    BigInt bi = BigInt.from(int.parse("$bi2") + int.parse(_array[integ3]));
                    value1 = value1 + int.parse(_array[integ3]);
                    _array2.addAll(['$value1']);
                    str = "$bi";
                    integ4++;
                    integ3++;//3...
                  }
                else
                  {
                    _array2.addAll(['$bi3']);
                    BigInt bi = BigInt.from(int.parse(_array2[integ3+1]) + int.parse(_array2[integ3]));
                    bi3 = BigInt.from(int.parse("$bi3") + int.parse(_array2[integ3]));
                    str = "$bi";
                    integ3++;
                  }
              }
            }
          integ1++;
        }

        return ListTile(title: Text("$str"));
      },
    );
  }
}
