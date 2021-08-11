import 'package:flutter/material.dart';

class ThirdRoute extends StatefulWidget {
  static const routeName = '/thirdRoute';
  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBarSection(), body: _bodySection());
  }

  GridView _bodySection() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        for (var i = 1; i <= 8; i++)
          InkWell(
            onTap: () => {},
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                i.toString() + ' Container Example',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.green[800],
            ),
          ),
      ],
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Third Route"),
    );
  }
}
