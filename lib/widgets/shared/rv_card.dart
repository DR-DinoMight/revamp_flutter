import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';

class RvCard extends StatelessWidget {
  final List<Widget> _children = [];
  final RvCardSize size;

  RvCard(
      {@required this.size,
      Widget header,
      @required Widget body,
      Widget footer}) {
    populateChildren(header, body, footer);
  }

  void populateChildren(Widget header, Widget body, Widget footer) {
    if (header != null) _children.add(header);
    _children.add(body);
    if (footer != null) _children.add(footer);
  }

  double calculateCardWidths(RvCardSize size) {
    var screenWidth = RuntimeCalculatedValues.instance.screenWidth;

    var width = 0.0;

    switch (size) {
      case RvCardSize.large:
        width = RvSizingValues.largeCardWidthFraction * screenWidth;
        break;
      case RvCardSize.medium:
        width = RvSizingValues.mediumCardWidthFraction * screenWidth;
        break;
      case RvCardSize.small:
        width = RvSizingValues.smallCardWidthFraction * screenWidth;
        break;
    }

    return width;
  }

  @override
  Widget build(BuildContext context) {
    double cardWidth = calculateCardWidths(size);

    return Container(
        width: cardWidth,
        child: Card(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _children),
        ));
  }
}
