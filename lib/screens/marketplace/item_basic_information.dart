import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';

import 'bid.dart';

class ItemBasicInformation extends StatefulWidget {
  @override
  _ItemBasicInformationState createState() => _ItemBasicInformationState();
}

class _ItemBasicInformationState extends State<ItemBasicInformation> {
  @override
  Widget build(BuildContext context) {
    return RvCard(
      body: Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Wrap(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('20K'),
                  Text(
                    ' Love this',
                    style: TextStyle(color: Colors.red[900]),
                  )
                ],
              ),
            ),
            Center(
              child: Wrap(
                children: [
                  Text(
                    'Current Bid',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: RvColors.green,
                    ),
                  ),
                  Text(" \$10 "),
                  Icon(Icons.shopping_basket)
                ],
              ),
            ),
          ],
        ),
      ),
      footer: Center(
        child: Wrap(children: <Widget>[
          RaisedButton(
            child: Wrap(
              children: [
                Text("Buy Now", style: TextStyle(color: RvColors.white)),
                Text(
                  " \$10",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: RvColors.white),
                )
              ],
            ),
            color: RvColors.green,
            onPressed: () {
              print('hello');
            },
          ),
          Padding(
            child: Text(
              " Or ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
          RaisedButton(
              child: Wrap(
                children: [
                  Text("Bid", style: TextStyle(color: RvColors.white)),
                ],
              ),
              color: RvColors.green,
              onPressed: () {
                showFancyCustomDialog(context);
              }),
        ]),
      ),
    );
  }
}
