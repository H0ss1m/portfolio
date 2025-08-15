import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/miniWidgets/aboutmeItem.dart';
import 'package:portfolio/view/main/widget/miniWidgets/project.dart';
import 'package:portfolio/view/main/widget/miniWidgets/services.dart';
import 'package:portfolio/view/main/widget/miniWidgets/welcomItem.dart';

Widget desktopView(
  BuildContext context,
  double dartValue,
  double flutterValue,
  double graphicDesignValue,
  double uiUxDesignValue,
  bool allIsSelected,
  bool webIsSelected,
  bool mobileIsSelected,
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
            graphicDesignValue,
            uiUxDesignValue,
          ),
          const SizedBox(height: 10),
          services(),
          const SizedBox(height: 10),
          project(
            allIsSelected: allIsSelected,
            webIsSelected: webIsSelected,
            mobileIsSelected: mobileIsSelected,
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
