import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';

class RvBottomNavBar extends StatelessWidget {
  final int activeButtonIndex;

  RvBottomNavBar([this.activeButtonIndex = 0]);

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: activeButtonIndex,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: RvColors.grey[800],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          title: Text('Boutique'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Notifications'),
        ),
      ],
    );
  }
}
