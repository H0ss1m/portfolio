import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget filterButton({
  required String title,
  required VoidCallback onPressed,
  required bool isSelected,
  double marginWidth = 0.0,
  double marginHeight = 0.0,
}) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: marginWidth,
      vertical: marginHeight,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    decoration: BoxDecoration(
      color: isSelected ? mainColor : Colors.transparent,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        color: isSelected ? Colors.transparent : Colors.grey,
        width: 1.0,
      ),
    ),
    child: Text(
      title,
      style: TextStyle(color: isSelected ? Colors.white : Colors.black),
    ),
  );
}
