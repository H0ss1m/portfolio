import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/filterButton.dart';
import 'package:portfolio/view/main/widget/miniWidgets/project.dart';
import 'package:portfolio/view/main/widget/miniWidgets/projectsViewer.dart';

Widget desktopProjects({
  required BuildContext context,
  required List<QueryDocumentSnapshot> data,
  required GlobalKey projectsKey,
}) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15.0,
            children: [
              filterButton(title: 'All', onPressed: () {}, isSelected: true),
              filterButton(title: 'Web', onPressed: () {}, isSelected: false),
              filterButton(
                title: 'Mobile',
                onPressed: () {},
                isSelected: false,
              ),
              filterButton(
                title: 'Desktop',
                onPressed: () {},
                isSelected: false,
              ),
              filterButton(
                title: 'Design',
                onPressed: () {},
                isSelected: false,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          projectsViewer(
            context: context,
            data: data,
            itemCount: data.length,
            scrollable: true,
            crossAxisCount: 3,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    ),
  );
}
