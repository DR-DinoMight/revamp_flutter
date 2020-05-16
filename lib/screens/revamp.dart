import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';
import 'package:revamp_flutter/widgets/shared/rv_card_list_container.dart';

class RevampScreen extends StatefulWidget {
  final String title;

  RevampScreen({this.title});

  @override
  _RevampScreenState createState() => _RevampScreenState();
}

class _RevampScreenState extends State<RevampScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your revamp'),
      ),
      body: Container(
        margin: RvEdgeInsets.container,
        child: RvCardListContainer(cards: [
          RvCard(
            body: Text("Hello world"),
          )
        ]),
      ),
    );
  }
}
