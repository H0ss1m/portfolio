import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/miniWidgets/aboutmeItem.dart';
import 'package:portfolio/view/main/widget/miniWidgets/project.dart';
import 'package:portfolio/view/main/widget/miniWidgets/sendEmail.dart';
import 'package:portfolio/view/main/widget/miniWidgets/services.dart';
import 'package:portfolio/view/main/widget/miniWidgets/welcomItem.dart';

Widget desktopView(
  BuildContext context, {
  required List<QueryDocumentSnapshot> data,
  required List<QueryDocumentSnapshot> skillsData,
  required GlobalKey<ScaffoldState> scaffoldKey,
  required GlobalKey homeKey,
  required GlobalKey aboutMeKey,
  required GlobalKey servicesKey,
  required GlobalKey projectsKey,
  required GlobalKey contactKey,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcomeItem(context, homeKey),
          const SizedBox(height: 10),
          aboutMeItem(skillsData: skillsData, aboutKey: aboutMeKey),
          const SizedBox(height: 10),
          services(servicesKey: servicesKey),
          const SizedBox(height: 10),
          project(context: context, data: data, projectsKey: projectsKey),
          // const SizedBox(height: 10),
          // Container(child: Text('Comment Section')),
          const SizedBox(height: 10),
          contact(
            context,
            contactKey: contactKey,
          ),
          const SizedBox(height: 10),
          Container(child: Text('Seventh Item')),
        ],
      ),
    ),
  );
}
