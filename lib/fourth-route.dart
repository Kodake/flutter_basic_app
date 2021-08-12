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

  ListView _bodySection() {
    final arg = ModalRoute.of(context)!.settings.arguments as Axis;

    return ListView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return _iteratedWidgets(context, index);
        });
  }

  Card _iteratedWidgets(BuildContext context, int index) {
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
                onPressed: () {
                  print(index);
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {
                  print(index);
                },
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
