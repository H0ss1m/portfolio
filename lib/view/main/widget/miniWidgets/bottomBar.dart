import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/socialMedia.dart';

Widget bottomBar() {
  return Container(
    decoration: BoxDecoration(color: boxColor),
    child: Center(
      child: Column(
        children: [
          Image.asset('assets/images/logo white.png', height: 150, width: 200),
          socialMedia(),
        ],
      ),
    ),
  );
}

