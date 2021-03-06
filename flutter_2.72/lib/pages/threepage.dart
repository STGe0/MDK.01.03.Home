import 'package:flutter/material.dart';

class ThreePage extends StatefulWidget{
  const ThreePage({Key? key}) : super(key: key);

  @override
  State<ThreePage> createState() => _ThreePageState();
}
class _ThreePageState extends State<ThreePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercedes-Benz A-Класс'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.orange,
                    height: 525,
                    width: 415,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.white,
                        height: 520,
                        width: 410,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Mercedes-Benz A-Класс",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 32,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Image.asset("images/fone03.jpeg",
                                width: 250,
                                height: 180,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "ширина",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Image.asset("images/01.png",
                                        width: 60,
                                        height: 60,
                                      ),
                                    ),
                                    Text(
                                      "1777мм",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "высота",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Image.asset("images/03.png",
                                        width: 60,
                                        height: 60,
                                      ),
                                    ),
                                    Text(
                                      "1332мм",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "длина",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Image.asset("images/02.png",
                                        width: 62,
                                        height: 62,
                                      ),
                                    ),
                                    Text(
                                      "4765мм",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      "клиренс",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Image.asset("images/04.png",
                                        width: 62,
                                        height: 62,
                                      ),
                                    ),
                                    Text(
                                      "???",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              "мест",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Image.asset("images/05.png",
                                width: 62,
                                height: 62,
                              ),
                            ),
                            Text(
                              "4",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}