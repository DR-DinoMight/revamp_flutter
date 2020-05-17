import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';

class BeforeAndAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RvCard(
          header: Text('Before'),
          body: Container(
            color: RvColors.grey,
            width: MediaQuery.of(context).size.width * 0.48,
            height: 200,
          ),
          footer: Container(
            height: 50,
          ),
        ),
        RvCard(
          header: Text('After'),
          body: Container(
            color: RvColors.grey,
            width: MediaQuery.of(context).size.width * 0.48,
            height: 200,
          ),
          footer: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.47,
            child: Row(
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
        ),
      ],
    );
  }
}
