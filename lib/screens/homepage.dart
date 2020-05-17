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
                    heading: "An ugly old chair", subHeading: "24 minutes ago"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "This chair is so ugly! I hate it. Let's do something new with it!",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "A 70's style floural dress",
                    subHeading: "three hours ago"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Back in the 70’s this was the height of fashion. I’d love to see this dress restored to its former glory.",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "An old garden table", subHeading: "one week ago"),
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
                    heading: "Snazzy Chair", subHeading: "Just now"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "You know you love it!",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.small,
                header: CardHeaderText(
                    heading: "Wood sculpture", subHeading: "2 days ago"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "Small cards don't have much space",
                  ),
                ),
              ),
              RvCard(
                size: RvCardSize.small,
                header: CardHeaderText(
                    heading: "USB Desk Fan", subHeading: "3 days ago"),
                body: Padding(
                  padding: RvEdgeInsets.cardContent,
                  child: Text(
                    "I'm running out of ideas",
                  ),
                ),
              ),
            ],
          ),
          RvCardListContainer(
            title: 'Latest Stories',
            cards: [
              RvCard(
                size: RvCardSize.large,
                header: CardHeaderText(
                    heading: "From old pallet to garden furnature",
                    subHeading: "2 weeks ago"),
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
