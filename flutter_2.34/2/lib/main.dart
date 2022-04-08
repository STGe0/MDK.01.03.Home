import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Не последнее приложение',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text('My First App'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.monetization_on),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.monetization_on_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                  child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              Text("Item 1"),
              Text("Item 2"),
              Text("Item 3"),
              Text("Item 4"),
              Text("Item 5"),
              Text("Item 6"),
            ],
          ),
        ),
        body: Container(
          color: Colors.cyan,
          child: const Text('Главный экран'),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stop),
            label: 'Stop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ]),
        floatingActionButton: Row(
          children: [
            SizedBox(
              width: 285,
              height: 10,
            ),
            FloatingActionButton(
                child: Icon(
                  Icons.add,
                ),
                onPressed: () {},
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            FloatingActionButton(
              child: Icon(
                Icons.ac_unit,
              ),
              onPressed: () {},
            ),
          ],
        ),
      )
    )
  );
}
