import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget projectViewer() {
  return Column(
    children: [
      Container(
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
        child: Image.network(
          'https://via.placeholder.com/150',
          fit: BoxFit.cover,
          
        ),
      ),
    ],
  );
}
