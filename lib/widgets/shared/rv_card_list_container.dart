import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_card.dart';

class RvCardListContainer extends StatelessWidget {
  final String title;
  final double height;
  final Axis scrollDirection;
  final List<RvCard> cards;
  final List<Widget> _children = [];

  RvCardListContainer(
      {this.title,
      @required this.cards,
      this.height = 160,
      this.scrollDirection = Axis.vertical}) {
    populateChildren();
  }

  void populateChildren() {
    if (title != null) {
      _children.add(
        Padding(
          padding: RvEdgeInsets.cardContent,
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    _children.add(
      Container(
        height: this.height,
        padding: RvEdgeInsets.cardListContainer,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: cards,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _children,
    );
  }
}
