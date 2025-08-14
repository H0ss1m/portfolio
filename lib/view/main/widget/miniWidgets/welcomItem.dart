import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';

Widget welcomeItem(BuildContext context) {
  return Row(
    children: [
      Expanded(
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi I am',
              style: TextStyle(
                fontSize: 15,
                color: textBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Hossam Hassan',
              style: TextStyle(
                fontSize: 18,
                color: mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 40,
                    color: textBlack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 60),
                    Expanded(
                      child: Text(
                        '& Graphic Designer',
                        style: TextStyle(
                          fontSize: 32,
                          color: textBlack,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'I create beautiful and functional mobile applications. I am passionate about design and development, and I strive to create user-friendly experiences.',
                style: TextStyle(
                  overflow: TextOverflow.fade,
                  fontSize: 15,
                  color: textBlack,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('Hire Me', style: TextStyle(color: textWhite)),
            ),
          ],
        ),
      ),
      Expanded(child: Image.asset('assets/images/me.png', height: 600)),
    ],
  );
}
