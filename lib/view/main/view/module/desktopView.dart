import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/miniWidgets/aboutmeItem.dart';
import 'package:portfolio/view/main/widget/miniWidgets/project.dart';
import 'package:portfolio/view/main/widget/miniWidgets/services.dart';
import 'package:portfolio/view/main/widget/miniWidgets/welcomItem.dart';

Widget desktopView(
  BuildContext context,
  double dartValue,
  double flutterValue,
  double photoshopValue,
  double illustratorValue,
  double websiteValue,
  double desktopValue,
  bool allIsSelected,
  bool webIsSelected,
  bool mobileIsSelected,
  bool desktopIsSelected,
  bool designIsSelected,
) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcomeItem(context),
          const SizedBox(height: 10),
          aboutMeItem(
            dartValue,
            flutterValue,
            photoshopValue,
            illustratorValue,
            websiteValue,
            desktopValue,
          ),
          const SizedBox(height: 10),
          services(),
          const SizedBox(height: 10),
          project(
            allIsSelected: allIsSelected,
            webIsSelected: webIsSelected,
            mobileIsSelected: mobileIsSelected,
            desktopIsSelected: desktopIsSelected,
            designIsSelected: designIsSelected,
            context: context,
          ),
          const SizedBox(height: 10),
          Container(child: Text('Fifth Item')),
          const SizedBox(height: 10),
          Container(child: Text('Sixth Item')),
          const SizedBox(height: 10),
          Container(child: Text('Seventh Item')),
        ],
      ),
    ),
  );
}
