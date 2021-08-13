import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/third-route.dart';

class FloatingActionButtonElements extends StatefulWidget {
  @override
  _FloatingActionButtonElementsState createState() =>
      _FloatingActionButtonElementsState();
}

class _FloatingActionButtonElementsState
    extends State<FloatingActionButtonElements> {
  @override
  Widget build(BuildContext context) {
    return _floatingActionButtonSection();
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
}
