import 'package:flutter/material.dart';
import 'package:revamp_flutter/themes/default.dart';

class CardHeaderWithTextHeadings extends StatelessWidget {
  final String heading;
  final String subHeading;

  CardHeaderWithTextHeadings({
    @required this.heading,
    @required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RvColors.green,
      width:
          (MediaQuery.of(context).size.width * RvSizes.largeCardWidthPercent),
      child: Padding(
          padding: RvEdgeInsets.cardContent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                heading,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      blurRadius: RvSizes.headingShadowBlurRadius,
                      color: RvColors.headingShadow,
                      offset: RvOffsets.headingShadow,
                    ),
                  ],
                  color: RvColors.white,
                ),
              ),
              Text(
                subHeading,
                style: TextStyle(
                  fontSize: 16,
                  shadows: [
                    Shadow(
                      blurRadius: RvSizes.headingShadowBlurRadius,
                      color: RvColors.headingShadow,
                      offset: RvOffsets.headingShadow,
                    ),
                  ],
                  color: RvColors.white,
                ),
              ),
            ],
          )),
    );
  }
}
