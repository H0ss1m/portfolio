import 'package:flutter/material.dart';
import 'package:portfolio/view/main/widget/filterButton.dart';

Widget project({
  required bool allIsSelected,
  required bool webIsSelected,
  required bool mobileIsSelected,
}) {
  return Column(
    children: [
      Row(
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
