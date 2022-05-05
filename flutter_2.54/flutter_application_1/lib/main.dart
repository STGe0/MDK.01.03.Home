import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Color.fromARGB(255, 17, 107, 180),
                  width: 450,
                  height: 1500,
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                            child: Text(
                              'Miami, US',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                            child: Text(
                              '27 °С',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Image.asset('images/2.png', width: 400, height: 300),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                            child: Text(
                              'Tuesday',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                            child: Text(
                              'CLOUDS',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FloatingActionButton(
                                  child: Icon(
                                    Icons.apps,
                                  ),
                                  onPressed: (){
                                    print('Ypu taped on');
                                  },
                                ),
                                FloatingActionButton(
                                  child: Icon(
                                    Icons.menu,
                                  ),
                                  onPressed: (){
                                    print('Ypu taped on');
                                  },
                                ),
                                FloatingActionButton(
                                  child: Icon(
                                    Icons.cached,
                                  ),
                                  onPressed: (){
                                    print('Ypu taped on');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  width: 450,
                  height: 1500,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      '26 °C',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Image.asset('images/1.png', width: 120, height: 90),
                                    Text(
                                      'Wednesday',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Rain',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.black
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '26 °C',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Image.asset('images/1.png', width: 120, height: 90),
                                    Text(
                                      'Thursday',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Rain',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.black
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '26 °C',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Image.asset('images/4.png', width: 120, height: 90),
                                    Text(
                                      'Friday',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Clouds',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.black
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '27 °C',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Image.asset('images/4.png', width: 120, height: 90),
                                    Text(
                                      'Saturday',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Clouds',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Divider(
                                        color: Colors.black
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
