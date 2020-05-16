import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';
import 'package:revamp_flutter/widgets/shared/rv_card_list_container.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: RvEdgeInsets.container,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            RvCardListContainer(title: 'Revamp Requests', cards: [
              RvCard(
                body: Text("Hello world"),
              )
            ]),
            Container(
              height: 160.0,
              color: Colors.blue,
            ),
            Container(
              height: 160.0,
              color: Colors.green,
            ),
            Container(
              height: 160.0,
              color: Colors.yellow,
            ),
            Container(
              height: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
