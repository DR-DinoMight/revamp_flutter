import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';
import 'package:revamp_flutter/widgets/shared/rv_card_list_container.dart';

import 'revamp.dart';

class RevampsListScreen extends StatefulWidget {
  final String title;

  RevampsListScreen({this.title});

  @override
  _RevampsListScreenState createState() => _RevampsListScreenState();
}

class _RevampsListScreenState extends State<RevampsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: RvEdgeInsets.container,
        child: RvCardListContainer(title: 'Your Revamps', cards: [
          RvCard(
            body: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RevampScreen()),
                );
              },
              child: Text("press me"),
            ),
          )
        ]),
      ),
    );
  }
}
