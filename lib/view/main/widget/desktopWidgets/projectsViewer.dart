import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/mobileWidgets/projectsViewerMobile.dart';
import 'package:portfolio/view/main/widget/projectView.dart';

Widget projectsViewer({
  required BuildContext context,
  required List<QueryDocumentSnapshot> data,
  int? itemCount,
  bool scrollable = false,
  int crossAxisCount = 2,
  required double height,
  required double width,
}) {
  final int count = itemCount ?? data.length;
  return SizedBox(
    width: width,
    height: height,
    child: GridView.builder(
      physics: scrollable
          ? const AlwaysScrollableScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      itemCount: count > 2 ? 2 : count,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (context, index) {
        return MediaQuery.of(context).size.width > 600
            ? projectView(
                context: context,
                title: data[index]['name'] ?? 'Project Title',
                type: data[index]['type'] ?? 'Type',
                imageUrl: data[index]['imageUrl'] ?? '',
                projectUrl: data[index]['projectUrl'] ?? '',
                gitHubUrl: data[index]['gitHubUrl'] ?? '',
              )
            : projectsViewerMobile(
                context: context,
                title: data[index]['name'] ?? 'Project Title',
                type: data[index]['type'] ?? 'Type',
                imageUrl: data[index]['imageUrl'] ?? '',
                projectUrl: data[index]['projectUrl'] ?? '',
                gitHubUrl: data[index]['gitHubUrl'] ?? '',
              );
      },
    ),
  );
}
