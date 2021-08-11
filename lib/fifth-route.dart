import 'package:flutter/material.dart';

class FifthRoute extends StatefulWidget {
  static const routeName = '/fifthRoute';
  @override
  _FifthRouteState createState() => _FifthRouteState();
}

class _FifthRouteState extends State<FifthRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBarSection(), body: _bodySection());
  }

  Container _bodySection() {
    final arg = ModalRoute.of(context)!.settings.arguments as Axis;
    int _index = 0;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 200.0,
        child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_i, i) {
              return Transform.scale(
                scale: i == _index || i == 9 ? 1 : 0.9,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Card ${i + 1}",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
              );
            }));
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Fifth Route"),
    );
  }
}
