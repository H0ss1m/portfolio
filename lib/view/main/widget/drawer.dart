import 'package:flutter/material.dart';

Widget cuDrawer({
  required BuildContext context,
  required GlobalKey homeKey,
  required GlobalKey aboutKey,
  required GlobalKey servicesKey,
  required GlobalKey projectsKey,
  required GlobalKey contactKey,
}) {
  return ListView(
    children: [
      DrawerHeader(
        // decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              'assets/images/logo white.png',
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      ListTile(
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        onTap: () {
          navigateToSection(homeKey, context);
        },
      ),
      ListTile(
        title: const Text(
          'About Me',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        onTap: () {
          navigateToSection(aboutKey, context);
        },
      ),
      ListTile(
        title: const Text(
          'Services',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        onTap: () {
          navigateToSection(servicesKey, context);
        },
      ),
      ListTile(
        title: const Text(
          'Projects',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        onTap: () {
          navigateToSection(projectsKey, context);
        },
      ),
      ListTile(
        title: const Text(
          'Contact',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        onTap: () {
          navigateToSection(contactKey, context);
        },
      ),
    ],
  );
}


void navigateToSection(GlobalKey key, BuildContext context) {
  Navigator.pop(context); // Close the drawer
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}