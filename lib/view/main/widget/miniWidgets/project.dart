import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:portfolio/controller/actions/projectFilters.dart';
import 'package:portfolio/view/main/widget/filterButton.dart';
import 'package:portfolio/view/main/widget/projectsViewer.dart';

Widget project({
  required BuildContext context,
  required List<QueryDocumentSnapshot> data,
  required GlobalKey projectsKey,
}) {
  return Column(
    key: projectsKey,
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 20.0,
    children: [
      const Text(
        'Projects',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      const Text('Here are some of my projects:'),
      GetBuilder<PortfolioController>(
        builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              filterButton(
                title: 'All',
                onPressed: () {
                  controller.toggleAll();
                },
                isSelected: controller.allIsSelected,
                marginWidth: 5.0,
              ),
              filterButton(
                title: 'Web',
                onPressed: () {
                  controller.toggleWeb();
                },
                isSelected: controller.webIsSelected,
                marginWidth: 5.0,
              ),
              filterButton(
                title: 'Mobile',
                onPressed: () {
                  controller.toggleMobile();
                },
                isSelected: controller.mobileIsSelected,
                marginWidth: 5.0,
              ),
              filterButton(
                title: 'Desktop',
                onPressed: () {
                  controller.toggleDesktop();
                },
                isSelected: controller.desktopIsSelected,
                marginWidth: 5.0,
              ),
              filterButton(
                title: 'Design',
                onPressed: () {
                  controller.toggleDesign();
                },
                isSelected: controller.designIsSelected,
                marginWidth: 5.0,
              ),
            ],
          );
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          // reverse: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return projectViewer(
              context: context,
              title: data[index]['name'] ?? 'Project Title',
              type: data[index]['type'] ?? 'Type',
              imageUrl: data[index]['imageUrl'] ?? '',
            );
          },
        ),
      ),
    ],
  );
}
