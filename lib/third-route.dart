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
      children: <Widget>[
        for (var i = 1; i <= 9; i++)
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

  // Card(
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         const ListTile(
  //           leading: Icon(Icons.album),
  //           title: Text('The Enchanted Nightingale'),
  //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: <Widget>[
  //             TextButton(
  //               child: const Text('BUY TICKETS'),
  //               onPressed: () {/* ... */},
  //             ),
  //             const SizedBox(width: 8),
  //             TextButton(
  //               child: const Text('LISTEN'),
  //               onPressed: () {/* ... */},
  //             ),
  //             const SizedBox(width: 8),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
}
