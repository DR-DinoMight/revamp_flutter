import 'package:flutter/material.dart';

class RvAppBar extends StatelessWidget implements PreferredSizeWidget {
  RvAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the Homepage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Image(
        image: AssetImage('assets/images/Revamp.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
