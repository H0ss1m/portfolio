import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget aboutMeItem(
  double dartValue,
  double flutterValue,
  double graphicDesignValue,
  double uiUxDesignValue,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 15,
    children: [
      Expanded(child: Image.asset('assets/images/me.png', height: 550)),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 25),
                    Text(
                      'Dart',
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: dartValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  activeColor: mainColor,
                  inactiveColor: Colors.grey,
                  // thumbColor: Colors.white,
                  label: '${dartValue.round().toString()}%',
                  divisions: 100,
                  mouseCursor: SystemMouseCursors.basic,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 25),
                    Text(
                      'Flutter',
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: flutterValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  activeColor: mainColor,
                  inactiveColor: Colors.grey,
                  // thumbColor: Colors.white,
                  label: '${flutterValue.round().toString()}%',
                  divisions: 100,
                  mouseCursor: SystemMouseCursors.basic,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 25),
                    Text(
                      'Graphic Design',
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: graphicDesignValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  activeColor: mainColor,
                  inactiveColor: Colors.grey,
                  // thumbColor: Colors.white,
                  label: '${graphicDesignValue.round().toString()}%',
                  divisions: 100,
                  mouseCursor: SystemMouseCursors.basic,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 25),
                    Text(
                      'UI/UX Design',
                      style: TextStyle(
                        color: textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: uiUxDesignValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  activeColor: mainColor,
                  inactiveColor: Colors.grey,
                  // thumbColor: Colors.white,
                  label: '${uiUxDesignValue.round().toString()}%',
                  divisions: 100,
                  mouseCursor: SystemMouseCursors.basic,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
