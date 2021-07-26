import 'package:flutter/material.dart';
import 'package:flutter_basic/card-elements.dart';
import 'package:flutter_basic/second-route.dart';
import 'package:flutter_basic/third-route.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      floatingActionButton: _floatingActionButtonSection(),
      body: CardElements(),
    );
  }

  FloatingActionButton _floatingActionButtonSection() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          ThirdRoute.routeName,
        );
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.green[800],
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
      ThirdRoute.routeName: (context) => ThirdRoute()
    },
  ));
}
