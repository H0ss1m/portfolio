import 'package:flutter/material.dart';
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
        'We offer a variety of services to help you achieve your goals. Whether you need mobile applications, web development, or graphic design, we have the expertise to deliver high-quality results.',
        style: TextStyle(fontSize: 16),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          servicesView(
            title: 'Mobile Applications',
            description:
                'You can create mobile applications for both Android and iOS platforms. It\'s a great way to reach a wider audience. It\'s fast and efficient.',
            imagePath: 'assets/icons/mobile-app.png',
          ),
          const SizedBox(width: 8.0),
          servicesView(
            title: 'Web Development',
            description:
                'We offer web development services to create responsive and functional websites. It\'s essential for any business.',
            imagePath: 'assets/icons/web-development.png',
          ),
          const SizedBox(width: 8.0),
          servicesView(
            title: 'Graphic Design',
            description:
                'Our graphic design services can help your brand stand out. We create visually appealing designs that effectively communicate your message.',
            imagePath: 'assets/icons/graphic-design.png',
          ),
        ],
      ),
    ],
  );
}
