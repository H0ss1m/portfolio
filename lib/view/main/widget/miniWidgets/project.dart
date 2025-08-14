import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/filterButton.dart';

Widget project({
  required bool allIsSelected,
  required bool webIsSelected,
  required bool mobileIsSelected,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 10.0,
    children: [
      const Text(
        'Projects',
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
      Text(''),
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
        ],
      ),
    ],
  );
}
