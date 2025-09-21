// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar cuHeader(
  BuildContext context,
  GlobalKey<ScaffoldState> scaffoldKey, {
  VoidCallback? homeOnPressed,
  VoidCallback? aboutMeOnPressed,
  VoidCallback? servicesOnPressed,
  VoidCallback? projectsOnPressed,
  VoidCallback? contactOnPressed,
  required List<QueryDocumentSnapshot> cvData,
}) {
  return MediaQuery.of(context).size.width > 600
      ? cuDesktopHeader(
          context,
          homeOnPressed: homeOnPressed,
          aboutMeOnPressed: aboutMeOnPressed,
          servicesOnPressed: servicesOnPressed,
          projectsOnPressed: projectsOnPressed,
          contactOnPressed: contactOnPressed,
          cvData: cvData,
        )
      : cuMobileHeader(context, scaffoldKey);
}

// Mobile header for smaller screens
AppBar cuMobileHeader(
  BuildContext context,
  GlobalKey<ScaffoldState> scaffoldKey,
) {
  return AppBar(
    backgroundColor: mainColor,
    iconTheme: const IconThemeData(color: Colors.white),
    title: Text('Hossam\'s Portfolio', style: TextStyle(color: Colors.white)),
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        scaffoldKey.currentState?.openDrawer();
      },
    ),
  );
}

// Desktop header for larger screens
AppBar cuDesktopHeader(
  BuildContext context, {
  required VoidCallback? homeOnPressed,
  required VoidCallback? aboutMeOnPressed,
  required VoidCallback? servicesOnPressed,
  required VoidCallback? projectsOnPressed,
  required VoidCallback? contactOnPressed,
  required List<QueryDocumentSnapshot> cvData,

}) {
  return AppBar(
    automaticallyImplyLeading: false,

    title: Image.asset('assets/images/logo white.png', height: 60, width: 150),

    // ========== Uncomment the following lines to add a gradient background
    // flexibleSpace: Container(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
    //   ),
    // ),
    actions: [
      IconButton(icon: const Text('Home'), onPressed: homeOnPressed),
      IconButton(icon: const Text('About Me'), onPressed: aboutMeOnPressed),
      IconButton(icon: const Text('Services'), onPressed: servicesOnPressed),
      IconButton(icon: const Text('Projects'), onPressed: projectsOnPressed),
      IconButton(icon: const Text('Contact'), onPressed: contactOnPressed),
      MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          if (cvData.isNotEmpty) {
            final cvUrl = cvData[0]['cvLink'];
            launchURL(cvUrl);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('CV not available')),
            );
          }
        },
        color: mainColor,
        child: const Text('Download CV', style: TextStyle(color: Colors.white)),
      ),
      const SizedBox(width: 30),
    ],
  );
}

void launchURL(String url) {
  launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}