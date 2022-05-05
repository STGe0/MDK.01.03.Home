import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Суши"),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){},
            ),
          ],
        ),
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget{
  const MyPage({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black26,
          ),
        ),
      ),
      child: ListView(
        children: [
          CardSushi(
            name: "Филадельфия Лайт",
            description1: "Лосось, сливочный сыр, огурец, рис. Порция 8 шт.\n"
                "Вес: 190 гр.",
            imageAsset: "images/1.png",
          oldPrice: "40 р.",
          newPrice: "50 р."),
          CardSushi(
            name: "Лава",
            description1: "Любимый ролл под соусом "
                "Лава с икрой летучей рыбы\n"
                "и морским гребешком "
                "начинка на выбор ",
            imageAsset: "images/2.png",
              oldPrice: "40 р.",
              newPrice: "50 р."),
          CardSushi(
            name: "Филадельфия",
            description1: "ЗОЛОТОЙ СТАНДАРТ: семга, "
                "сливочный сыр, рис. Порция\n"
                "8 шт. Вес: 220 гр. ",
            imageAsset: "images/3.png",
              oldPrice: "40 р.",
              newPrice: "50 р."),
        ],
      ),
    );
  }
}

class CardSushi extends StatelessWidget {
  final String name;
  final String description1;
  final String imageAsset;
  final String oldPrice;
  final String newPrice;
  const CardSushi({Key? key, required this.name, required this.description1, required this.imageAsset, required this.oldPrice, required this.newPrice}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black26,
          ),
        ),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            imageAsset,
            width: 150,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 15),
                                Text(
                                  newPrice,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(height: 15),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 28),
                                  ),
                                  onPressed: (){},
                                  child: Text("Заказать"),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                          ],
                        ),
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
    );
  }
}