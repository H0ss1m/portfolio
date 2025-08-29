import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget bottomBar() {
  return Container(
    decoration: BoxDecoration(color: boxColor),
    child: Center(
      child: Column(
        children: [
          Image.asset('assets/images/logo white.png', height: 150, width: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/instagram.png',
                  fit: BoxFit.cover,
                  color: Colors.black,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/linkedin.png',
                  fit: BoxFit.cover,
                  color: Colors.black,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/facebook.png',
                  fit: BoxFit.cover,
                  color: Colors.black,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/youtube.png',
                  fit: BoxFit.cover,
                  color: Colors.black,
                  width: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
