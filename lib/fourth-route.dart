import 'package:flutter/material.dart';

class FourthRoute extends StatefulWidget {
  static const routeName = '/fourthRoute';
  @override
  _FourthRouteState createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBarSection(), body: _bodySection());
  }

  SingleChildScrollView _bodySection() {
    final arg = ModalRoute.of(context)!.settings.arguments as Axis;

    print(arg);

    return SingleChildScrollView(
      scrollDirection: arg,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          for (var i = 1; i <= 8; i++) _iteratedWidgets(),
        ],
      ),
    );
  }

  Card _iteratedWidgets() {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Fourth Route"),
    );
  }
}
