import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/miniWidgets/servicesView.dart';

Widget services() {
  return Column(
    spacing: 10,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Services',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(
        'Lorem ipsum dolor sit abet, connecter advising edit.',
        style: TextStyle(fontSize: 16),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          servicesView(
            title: 'Service 1',
            description: 'Description for Service 1',
            imagePath: 'assets/icons/mobile-app.png',
          ),
          const SizedBox(width: 8.0),
          servicesView(
            title: 'Service 2',
            description: 'Description for Service 2',
            imagePath: 'assets/icons/mobile-app.png',
          ),
          const SizedBox(width: 8.0),
          servicesView(
            title: 'Service 3',
            description: 'Description for Service 3',
            imagePath: 'assets/icons/mobile-app.png',
          ),
        ],
      ),
    ],
  );
}
