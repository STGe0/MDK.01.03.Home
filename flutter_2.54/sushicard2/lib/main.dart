import 'package:flutter/material.dart';

void main() => runApp(Page());

class Page extends StatefulWidget{
  const Page({Key? key}) : super (key: key);

  @override
  State<StatefulWidget> createState(){
    return _Page();
  }
}
class _Page extends State<Page>{
  String price = "520 р.";
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Суши"),
          actions: [
            FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: Text(price),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){},
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
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
                  oldPrice: "40",
                  newPrice: "50",
              Price: price,),
              CardSushi(
                  name: "Лава",
                  description1: "Любимый ролл под соусом "
                      "Лава с икрой летучей рыбы\n"
                      "и морским гребешком "
                      "начинка на выбор ",
                  imageAsset: "images/2.png",
                  oldPrice: "50",
                  newPrice: "30",
                Price: price,),
              CardSushi(
                  name: "Филадельфия",
                  description1: "ЗОЛОТОЙ СТАНДАРТ: семга, "
                      "сливочный сыр, рис. Порция\n"
                      "8 шт. Вес: 220 гр. ",
                  imageAsset: "images/3.png",
                  oldPrice: "25",
                  newPrice: "67",
                Price: price,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Text(
                            "Скидка: ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                              "Доставка: ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "30 р.",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Бесплатно",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                child: Text("Итого: 520 р.                      |                      Оформить"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardSushi extends StatefulWidget {
  final String name;
  final String description1;
  final String imageAsset;
  final String oldPrice;
  final String newPrice;
  final String Price;

  const CardSushi(
      {Key? key, required this.name, required this.description1, required this.imageAsset, required this.oldPrice, required this.newPrice, required this.Price})
      : super (key: key);

  @override
  _CardSushi createState() =>
      _CardSushi(this.name, this.description1, this.imageAsset, this.oldPrice,
          this.newPrice, this.Price);
}
class _CardSushi extends State<CardSushi>{

  final String name;
  final String description1;
  final String imageAsset;
  final String oldPrice;
  final String newPrice;
  final String Price;
  int count = 0;

  _CardSushi(this.name, this.description1, this.imageAsset, this.oldPrice,
      this.newPrice, this.Price);
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
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.white),
                              ),
                              child: Ink(
                                color: Colors.green,
                                child: Icon(
                                  Icons.add,
                                  size: 50,
                                  color: Colors.yellow,
                                ),
                              ),
                              onPressed: (){
                                if(count >= 0)
                                  {
                                    setState(() {
                                      count = count + 1;
                                    });
                                  }
                              },
                            ),
                            Text(count.toString(),
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.white),
                              ),
                              child: Ink(
                                color: Colors.green,
                                child: Icon(
                                  Icons.remove,
                                  size: 50,
                                  color: Colors.yellow,
                                ),
                              ),
                              onPressed: (){
                                if(count > 0)
                                {
                                  setState(() {
                                    count = count - 1;
                                  });
                                }
                              },
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
                            Text(newPrice + " р.",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                            ),
                            Text(oldPrice + " р.",
                              style: TextStyle(
                                fontSize: 30,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
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