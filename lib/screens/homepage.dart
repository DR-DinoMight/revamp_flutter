import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/rv_app_bar.dart';
import 'package:revamp_flutter/widgets/shared/rv_bottom_nav_bar.dart';
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
        appBar: RvAppBar(),
        bottomNavigationBar: RvBottomNavBar(0),
        body: Container(
          margin: RvEdgeInsets.container,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.vertical,
            children: <Widget>[
              RvCardListContainer(
                title: 'Revamp Requests',
                cards: [
                  RvCard(
                    header: Container(
                      color: RvColors.green,
                      width: (MediaQuery.of(context).size.width *
                          RvSizes.largeCardWidthPercent),
                      child: Padding(
                          padding: RvEdgeInsets.cardContent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Heading",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  shadows: [
                                    Shadow(
                                      blurRadius:
                                          RvSizes.headingShadowBlurRadius,
                                      color: RvColors.headingShadow,
                                      offset: RvOffsets.headingShadow,
                                    ),
                                  ],
                                  color: RvColors.white,
                                ),
                              ),
                              Text(
                                "Subheading",
                                style: TextStyle(
                                  fontSize: 16,
                                  shadows: [
                                    Shadow(
                                      blurRadius:
                                          RvSizes.headingShadowBlurRadius,
                                      color: RvColors.headingShadow,
                                      offset: RvOffsets.headingShadow,
                                    ),
                                  ],
                                  color: RvColors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                    body: Padding(
                      padding: RvEdgeInsets.cardContent,
                      child: Text(
                        "Hello world SDSDSDSDSDSDSDDSD",
                      ),
                    ),
                  )
                ],
              ),
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
        ));
  }
}

// class RvContainerBuilder {
//   List<Widget> _children = [];

//   RvContainerBuilder addContent(Widget child) {
//     this._children.add(child);
//     return this;
//   }

//   Container build(BuildContext context) {
//     return new Container(
//         color: Colors.green,
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           children: _children,
//         ));
//   }
// }
