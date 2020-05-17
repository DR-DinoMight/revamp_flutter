import 'package:flutter/material.dart';
import 'package:revamp_flutter/screens/marketplace/before_and_after.dart';
import 'package:revamp_flutter/screens/marketplace/item_basic_information.dart';

class ItemScreen extends StatefulWidget {
  final String title;

  ItemScreen({this.title});

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  var _icon = Icons.star_border;

  void toggleIcons() {
    setState(() {
      _icon = _icon == Icons.star_border ? Icons.star : Icons.star_border;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your revamp'),
        ),
        body: Column(
          children: <Widget>[
            ItemBasicInformation(),
            BeforeAndAfter(),
          ],
        ));
  }
}
