import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';

class RvCard extends StatelessWidget {
  final List<Widget> _children = [];

  RvCard({
    Widget header,
    @required Widget body,
    Widget footer,
  }) {
    populateChildren(header, body, footer);
  }

  void populateChildren(Widget header, body, Widget footer) {
    if (header != null) _children.add(header);
    _children.add(body);
    if (footer != null) _children.add(footer);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: RvEdgeInsets.container,
      child: Column(mainAxisSize: MainAxisSize.min, children: _children),
    ));
  }
}
