import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottonNavigationBarElements extends StatefulWidget {
  @override
  _BottonNavigationBarElementsState createState() =>
      _BottonNavigationBarElementsState();
}

class _BottonNavigationBarElementsState
    extends State<BottonNavigationBarElements> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _bottomNavigationBarSection();
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
}
