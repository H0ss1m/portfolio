import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget servicesView({
  required String title,
  required String description,
  required String imagePath,
}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            color: mainColor,
            height: 50,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(description, style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),)
        ],
      ),
    ),
  );
}
