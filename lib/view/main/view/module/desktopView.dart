import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/controller/actions/projectFilters.dart';
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
  double excelValue,
  double wordValue,
  double powerPointValue,
  
  {required List<QueryDocumentSnapshot> data,}
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
            excelValue,
            wordValue,
            powerPointValue
          ),
          const SizedBox(height: 10),
          services(),
          const SizedBox(height: 10),
          project(
            context: context,
            data: data,
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
