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

  GridView _bodySection() {
    return GridView.builder(
      primary: false,
      padding: EdgeInsets.only(top: 25, bottom: 450, left: 10, right: 10),
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              '$index Container Example',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            color: Colors.green[800],
          ),
          onTap: () => {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text('The current index is: $index'),
                      content: Text('$index Container Example'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    )),
          },
        );
      },
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: Text("Fifth Route"),
    );
  }
}
