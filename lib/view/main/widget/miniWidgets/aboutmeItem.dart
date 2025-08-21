import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/aboutViewer.dart';

Widget aboutMeItem(
  {
    required List<QueryDocumentSnapshot> skillsData,
    required GlobalKey aboutKey,
  }
  // {required Key? key,}
) {
  return Row(
    key: aboutKey,
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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: skillsData.length,
              itemBuilder: (context, index) {
                return aboutViewer(
                  percent: skillsData[index]['value'],
                  skillName: skillsData[index]['skill'],
                );
              },
            )
          ],
        ),
      ),
    ],
  );
}
