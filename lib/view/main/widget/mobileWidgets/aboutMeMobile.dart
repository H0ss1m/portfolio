import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/aboutViewer.dart';

Widget aboutMeMobile({
  required List<QueryDocumentSnapshot> skillsData,
  required GlobalKey aboutKey,
}) {
  return Column(
    key: aboutKey,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'About Me',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(
        'I\'m Hossam Hassan, a passionate Mobile Developer & Graphic Designer with a strong focus on building functional and visually appealing digital solutions. With experience in Flutter development, I craft cross-platform mobile apps that deliver smooth performance and great user experiences. Alongside my development skills, I bring a creative edge as a graphic designer, ensuring every project I work on is both effective and aesthetically engaging. I love turning ideas into real products that help businesses grow and users enjoy. Always eager to learn, improve, and take on new challenges — let\'s create something amazing together!',
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
      ),
    ],
  );
}
