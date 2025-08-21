import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/aboutViewer.dart';

Widget aboutMeItem(
  double dartValue,
  double flutterValue,
  double photoshopValue,
  double illustratorValue,
  double websiteValue,
  double desktopValue,
  double excelValue,
  double wordValue,
  double powerPointValue,
  // {required Key? key,}
) {
  return Row(
    // key: key,
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 15,
    children: [
      Expanded(
        child: Center(child: Image.asset('assets/images/me.png', height: 550)),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Hello, I am a Mobile app developer with a passion for creating beautiful and functional applications.',
              style: TextStyle(fontSize: 16, color: textBlack),
            ),
            const SizedBox(height: 20),
            aboutViewer(percent: dartValue, skillName: 'Dart'),
            aboutViewer(percent: flutterValue, skillName: 'Flutter'),
            aboutViewer(percent: websiteValue, skillName: 'Website'),
            aboutViewer(
              percent: desktopValue,
              skillName: 'Desktop Application',
            ),
            aboutViewer(percent: photoshopValue, skillName: 'Photoshop'),
            aboutViewer(percent: illustratorValue, skillName: 'Illustrator'),
            aboutViewer(percent: wordValue, skillName: 'Word'),
            aboutViewer(percent: excelValue, skillName: 'Excel'),
            aboutViewer(percent: powerPointValue, skillName: 'PowerPoint'),
          ],
        ),
      ),
    ],
  );
}
