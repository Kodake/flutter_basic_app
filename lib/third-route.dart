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
    return GridView.builder(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => {},
          child: Container(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              index.toString() + ' Container Example',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Colors.green[800],
          ),
        );
      },
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Third Route"),
    );
  }
}
