import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/desktopWidgets/bottomBar.dart';
import 'package:portfolio/view/main/widget/desktopWidgets/services.dart';
import 'package:portfolio/view/main/widget/mobileWidgets/aboutMeMobile.dart';
import 'package:portfolio/view/main/widget/mobileWidgets/projectMobile.dart';
import 'package:portfolio/view/main/widget/mobileWidgets/welcomeMobile.dart';

Widget mobileView({
  required BuildContext context,
  required GlobalKey homeKey,
  required GlobalKey aboutKey,
  required List<QueryDocumentSnapshot> skillsData,
  required GlobalKey servicesKey,
  required List<QueryDocumentSnapshot> data,
  required GlobalKey projectsKey,
  required GlobalKey contact,
}) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcomeMobile(context: context, homeKey: homeKey),
          Divider(),
          aboutMeMobile(skillsData: skillsData, aboutKey: aboutKey),
          Divider(),
          services(servicesKey: servicesKey),
          Divider(),
          projectMobile(context: context, data: data, projectsKey: projectsKey),
          Divider(),
          bottomBar(contact),
        ],
      ),
    ),
  );
}
