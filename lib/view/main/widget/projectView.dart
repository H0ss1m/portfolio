// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget projectView({
  required BuildContext context,
  required String title,
  required String type,
  required String imageUrl,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    spacing: MediaQuery.of(context).size.width > 855 ? 8.0 : 0.0,
    children: [
      Container(
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
      Text(type, style: TextStyle(color: mainColor, fontSize: 12)),
      Text(
        title,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
