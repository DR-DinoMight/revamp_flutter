import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';
import 'package:revamp_flutter/widgets/shared/Card_header_with_text_headings.dart';
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
          RvCardListContainer(
            title: 'Revamp Requests',
            cards: [
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading2", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading3", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
            ],
          ),
          RvCardListContainer(
            title: 'New Revamps',
            cards: [
              RvCard(
                size: RvCardSize.small,
                header: CardHeaderText(
                    heading: "Heading", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.small,
                header: CardHeaderText(
                    heading: "Heading2", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.small,
                header: CardHeaderText(
                    heading: "Heading3", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
            ],
          ),
          RvCardListContainer(
            title: 'Large Catalogue Menu',
            cards: [
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading2", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "Heading3", subHeading: "Subheading"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Hello world SDSDSDSDSDSDSDDSD",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
