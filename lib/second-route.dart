import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/elements/card-elements.dart';

class SecondRoute extends StatefulWidget {
  static const routeName = '/extractArgsFromSecondRoute';
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      body: _bodySection(context),
    );
  }

  Column _bodySection(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Email: ${arg.title}, Message: ${arg.message}')),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back!")),
        ),
      ],
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Second Route"),
    );
  }
}
