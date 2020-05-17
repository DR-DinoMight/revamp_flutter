import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';
import 'package:revamp_flutter/widgets/shared/rv_card_list_container.dart';

import 'item.dart';

class MarketplaceScreen extends StatefulWidget {
  final String title;

  MarketplaceScreen({this.title});

  @override
  _MarketplaceScreenState createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: RvEdgeInsets.container,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[
            RvCardListContainer(
              title: 'Recently posted items',
              cards: [
                RvCard(
                  body: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemScreen()),
                      );
                    },
                    child: Text("press me"),
                  ),
                ),
              ],
            ),
            RvCardListContainer(
              title: 'Things we think you\'ll like',
              cards: [
                RvCard(
                  body: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemScreen()),
                      );
                    },
                    child: Text("press me"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
