import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget aboutViewer({
  required double percent,
  required String skillName,
}) {
  return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 25),
                    Text(
                      skillName,
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: percent,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  activeColor: mainColor,
                  inactiveColor: Colors.grey,
                  // thumbColor: Colors.white,
                  label: '${percent.round().toString()}%',
                  divisions: 100,
                  mouseCursor: SystemMouseCursors.basic,
                ),
              ],
            );
}