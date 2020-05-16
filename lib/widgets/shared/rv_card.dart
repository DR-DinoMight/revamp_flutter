import 'package:flutter/material.dart';

class RvCard extends StatelessWidget {
  final List<Widget> _children = [];

  RvCard({Widget header, @required Widget body, Widget footer}) {
    populateChildren(header, body, footer);
  }

  void populateChildren(Widget header, Widget body, Widget footer) {
    if (header != null) _children.add(header);
    _children.add(body);
    if (footer != null) _children.add(footer);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _children),
    );
  }
}
