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
          itemCount: 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return projectViewer(
              context: context,
              title: 'Project ${index + 1}',
              type: 'Web Design',
              imageUrl:
                  'https://cdn.dribbble.com/userupload/44333560/file/2d2c38a50b0bc343c6973ccd4adb3a52.png?resize=1504x1128&vertical=center',
            );
          },
        ),
      ),
    ],
  );
}
