// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/cuHeader.dart';

Widget projectsViewerMobile({
  required BuildContext context,
  required String title,
  required String type,
  required String imageUrl,
  required String projectUrl,
  required String gitHubUrl,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    spacing: MediaQuery.of(context).size.width > 855 ? 8.0 : 0.0,
    children: [
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.35,
          // height: MediaQuery.of(context).size.height * 0.5,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: mainColor.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Image.network(imageUrl, fit: BoxFit.contain),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(type, style: TextStyle(color: mainColor, fontSize: 12)),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launchURL(projectUrl);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    foregroundColor: textWhite,
                  ),
                  child: const Text('View Project'),
                ),
                IconButton(
                  onPressed: () {
                    launchURL(gitHubUrl);
                  },
                  icon: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/icons/github.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
