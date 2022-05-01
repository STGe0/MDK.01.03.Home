import 'package:flutter/material.dart';
import 'package:flutter_2_72/pages/twopage.dart';
import 'package:flutter_2_72/pages/onepage.dart';
import 'package:flutter_2_72/pages/threepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Каталог автомобилей",
      home: SimpleNavigation(),
    );
  }
}

class SimpleNavigation extends StatelessWidget {
  const SimpleNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Каталог автомобилей"),
        centerTitle: true,
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: Colors.orange,
                  height: 425,
                  width:405,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.white,
                      height: 420,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'АВТОМОБИЛИ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                color: Colors.white,
                                child: Image.asset("images/1h.png",
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'HONDA',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(width: 30),
                              Text(
                                '=>',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => OnePage());
                                  Navigator.push(context, route);
                                },
                                child: Text('Перейти'),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                color: Colors.white,
                                child: Image.asset("images/2b.png",
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'BMW',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(width: 55),
                              Text(
                                '=>',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => TwoPage());
                                  Navigator.push(context, route);
                                },
                                child: Text('Перейти'),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                color: Colors.white,
                                child: Image.asset("images/3merc.png",
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'MERC',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(width: 45),
                              Text(
                                '=>',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => ThreePage());
                                  Navigator.push(context, route);
                                },
                                child: Text('Перейти'),
                              ),
                            ],
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
    );
  }
}
