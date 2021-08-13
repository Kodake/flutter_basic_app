import 'package:flutter/material.dart';
import 'package:flutter_basic/second-route.dart';

class CardElements extends StatefulWidget {
  @override
  _CardElementsState createState() => _CardElementsState();
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class ExampleClass {
  final String name;
  final String phone;
  final String email;
  final String message;

  ExampleClass(this.name, this.phone, this.email, this.message);
}

class _CardElementsState extends State<CardElements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodySection(context));
  }

  ListView _bodySection(BuildContext context) {
    List<ExampleClass> myList = [];

    myList.add(ExampleClass("15 Sreet 16 Ave. NY", "155-155-1555",
        "email_100@mail.com", "My 1st message"));
    myList.add(ExampleClass("25 Sreet 26 Ave. IL", "255-255-2555",
        "email_200@mail.com", "My 2nd message"));
    myList.add(ExampleClass("35 Sreet 36 Ave. FL", "355-355-3555",
        "email_300@mail.com", "My 3rd message"));
    myList.add(ExampleClass("45 Sreet 46 Ave. LA", "455-455-4555",
        "email_400@mail.com", "My 4th message"));
    myList.add(ExampleClass("55 Sreet 56 Ave. LA", "555-555-5555",
        "email_500@mail.com", "My 5th message"));

    return ListView.builder(
      padding: EdgeInsets.all(5.0),
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(children: <Widget>[
          SizedBox(
            height: 210,
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SecondRoute.routeName,
                        arguments: ScreenArguments(
                          myList[index].name,
                          myList[index].message,
                        ),
                      );
                    },
                    title: Text(myList[index].name,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(myList[index].name),
                    leading: Icon(
                      Icons.streetview,
                      color: Colors.blue[500],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SecondRoute.routeName,
                        arguments: ScreenArguments(
                          myList[index].phone,
                          myList[index].message,
                        ),
                      );
                    },
                    title: Text(myList[index].phone,
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    leading: Icon(
                      Icons.contact_phone,
                      color: Colors.blue[500],
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SecondRoute.routeName,
                        arguments: ScreenArguments(
                          myList[index].email,
                          myList[index].message,
                        ),
                      );
                    },
                    title: Text(myList[index].email),
                    leading: Icon(
                      Icons.contact_mail,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]);
      },
    );
  }
}
