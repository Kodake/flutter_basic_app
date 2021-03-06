import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerElements extends StatefulWidget {
  @override
  _DrawerElementsState createState() => _DrawerElementsState();
}

class ItemDrawer {
  final String name;
  final Icon icon;
  final Axis scrollDirect;
  final String routeName;

  ItemDrawer(this.name, this.icon, this.scrollDirect, this.routeName);
}

class _DrawerElementsState extends State<DrawerElements> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _drawerSection(context),
    );
  }

  Drawer _drawerSection(BuildContext context) {
    List<ItemDrawer> myList = [];

    myList.add(ItemDrawer(
        "Messages", Icon(Icons.message), Axis.vertical, '/fourthRoute'));
    myList.add(ItemDrawer("Notifications", Icon(Icons.notifications),
        Axis.horizontal, '/fifthRoute'));
    myList.add(ItemDrawer(
        "Gifts", Icon(Icons.card_giftcard), Axis.vertical, '/fifthRoute'));
    myList.add(ItemDrawer(
        "Stepper", Icon(Icons.list), Axis.horizontal, '/sixthRoute'));

    return Drawer(
        child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: 70.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Drawer Header',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () => {Navigator.pop(context)},
                )
              ],
            ),
          ),
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
}
