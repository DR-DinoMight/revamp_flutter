import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';
import 'package:revamp_flutter/widgets/shared/rv_card_list_container.dart';

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
            RvCard(
              body: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        FlatButton(
                          child: Icon(
                            _icon,
                            color: Colors.yellow,
                          ),
                          onPressed: () {
                            toggleIcons();
                          },
                          padding: EdgeInsets.only(right: 0),
                        ),
                        Text('20K'),
                        Text(
                          ' Love this',
                          style: TextStyle(color: Colors.red[900]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
