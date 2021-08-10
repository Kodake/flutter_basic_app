import 'package:flutter/material.dart';
import 'package:flutter_basic/card-elements.dart';
import 'package:flutter_basic/second-route.dart';
import 'package:flutter_basic/third-route.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
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
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue[200],
      onTap: _onItemTapped,
    );
  }

  Drawer _drawerSection(BuildContext context) {
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
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
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
      ThirdRoute.routeName: (context) => ThirdRoute()
    },
  ));
}
