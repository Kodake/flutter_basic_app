import 'package:flutter/material.dart';
import 'package:flutter_basic/elements/bottomnavigationbar-elements.dart';
import 'package:flutter_basic/elements/card-elements.dart';
import 'package:flutter_basic/elements/drawer-elements.dart';
import 'package:flutter_basic/elements/floatingactionbutton-elements.dart';
import 'package:flutter_basic/second-route.dart';
import 'package:flutter_basic/third-route.dart';
import 'package:flutter_basic/fourth-route.dart';
import 'package:flutter_basic/fifth-route.dart';
import 'package:flutter_basic/sixth-route.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      drawer: DrawerElements(),
      floatingActionButton: FloatingActionButtonElements(),
      bottomNavigationBar: BottonNavigationBarElements(),
      body: CardElements(),
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text('Shopping List'),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(),
    routes: {
      SecondRoute.routeName: (context) => SecondRoute(),
      ThirdRoute.routeName: (context) => ThirdRoute(),
      '/fourthRoute': (context) => FourthRoute(),
      '/fifthRoute': (context) => FifthRoute(),
      '/sixthRoute': (context) => SixthRoute()
    },
  ));
}
