import 'package:flutter/material.dart';
import 'package:flutter_basic/card-elements.dart';
import 'package:flutter_basic/second-route.dart';
import 'package:flutter_basic/sixth-route.dart';
import 'package:flutter_basic/third-route.dart';

import 'fifth-route.dart';
import 'fourth-route.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class ItemDrawer {
  final String name;
  final Icon icon;
  final Axis scrollDirect;
  final String routeName;

  ItemDrawer(this.name, this.icon, this.scrollDirect, this.routeName);
}

class _ShoppingListState extends State<ShoppingList> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawerSection(context),
      appBar: _appBarSection(),
      floatingActionButton: _floatingActionButtonSection(),
      bottomNavigationBar: _bottomNavigationBarSection(),
      body: CardElements(),
    );
  }

  BottomNavigationBar _bottomNavigationBarSection() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      mouseCursor: SystemMouseCursors.grab,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue[200],
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Colors.indigoAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.pink,
        ),
      ],
    );
  }

  Drawer _drawerSection(BuildContext context) {
    List<ItemDrawer> myList = [];

    myList.add(ItemDrawer(
        "Messages", Icon(Icons.message), Axis.vertical, '/fourthRoute'));
    myList.add(ItemDrawer("Notifications", Icon(Icons.notifications),
        Axis.horizontal, '/fifthRoute'));
    myList.add(ItemDrawer(
        "Stepper", Icon(Icons.list), Axis.horizontal, '/sixthRoute'));

    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        for (var item in myList)
          ListTile(
              leading: item.icon,
              title: Text(item.name),
              onTap: () {
                Navigator.pushNamed(context, item.routeName,
                    arguments: item.scrollDirect);
              }),
      ],
    ));
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

  AppBar _appBarSection() {
    return AppBar(
      title: Text('Shopping List'),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(),
    routes: {
      SecondRoute.routeName: (context) => SecondRoute(),
      ThirdRoute.routeName: (context) => ThirdRoute(),
      '/fourthRoute': (context) => FourthRoute(),
      '/fifthRoute': (context) => FifthRoute(),
      '/sixthRoute': (context) => SixthRoute()
    },
  ));
}
