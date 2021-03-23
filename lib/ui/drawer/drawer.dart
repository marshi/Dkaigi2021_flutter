import 'package:flutter/material.dart';

class DkaigiDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DrawerHeader(
            margin: EdgeInsets.all(0.0),
            child: Text("header"),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          DrawerItem(Icons.add, "HOME", isActive: true),
          DrawerItem(Icons.add, "BLOG"),
          DrawerItem(Icons.add, "VIDEO"),
          DrawerItem(Icons.add, "PODCAST"),
          const Divider(height: 1),
          DrawerItem(Icons.add, "PODCAST"),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isActive;

  DrawerItem(this.icon, this.text, {this.isActive = false});

  @override
  Widget build(BuildContext context) {
    const shapeBorder = BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0),
        bottomRight: Radius.circular(15.0),
      ),
    );
    return Material(
      color: Colors.yellow,
      shape: shapeBorder,
      child: InkWell(
        onTap: () {},
        customBorder: shapeBorder,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              Icon(
                icon,
                color: isActive ? Colors.red : Colors.black,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
