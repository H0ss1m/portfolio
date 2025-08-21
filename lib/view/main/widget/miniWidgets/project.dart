import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/filterButton.dart';
import 'package:portfolio/view/main/widget/projectsViewer.dart';

Widget project({
  required bool allIsSelected,
  required bool webIsSelected,
  required bool mobileIsSelected,
  required bool desktopIsSelected,
  required bool designIsSelected,
  required BuildContext context,
  required List<QueryDocumentSnapshot> data,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 20.0,
    children: [
      const Text(
        'Projects',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      const Text('You have no projects yet.'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          filterButton(
            title: 'All',
            onPressed: () {},
            isSelected: allIsSelected,
            marginWidth: 5.0,
          ),
          filterButton(
            title: 'Web',
            onPressed: () {},
            isSelected: webIsSelected,
            marginWidth: 5.0,
          ),
          filterButton(
            title: 'Mobile',
            onPressed: () {},
            isSelected: mobileIsSelected,
            marginWidth: 5.0,
          ),
          filterButton(
            title: 'Desktop',
            onPressed: () {},
            isSelected: desktopIsSelected,
            marginWidth: 5.0,
          ),
          filterButton(
            title: 'Design',
            onPressed: () {},
            isSelected: designIsSelected,
            marginWidth: 5.0,
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return projectViewer(
              context: context,
              title: data[index]['title'] ?? 'Project Title',
              type: data[index]['type'] ?? 'Web',
              imageUrl: data[index]['imageUrl'] ?? '',
            );
          },
        ),
      ),
    ],
  );
}
