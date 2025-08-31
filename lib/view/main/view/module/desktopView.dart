// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/miniWidgets/aboutmeItem.dart';
import 'package:portfolio/view/main/widget/miniWidgets/bottomBar.dart';
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
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          welcomeItem(context, homeKey),
          aboutMeItem(skillsData: skillsData, aboutKey: aboutMeKey),
          services(servicesKey: servicesKey),
          project(context: context, data: data, projectsKey: projectsKey),
          // ================= Comment Section =================
          // Container(child: Text('Comment Section')),
          contact(context, contactKey: contactKey),
          const SizedBox(height: 20),
          bottomBar(),
        ],
      ),
    ),
  );
}
