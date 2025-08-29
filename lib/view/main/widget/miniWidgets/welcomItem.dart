import 'package:flutter/material.dart';
import 'package:portfolio/model/colorBallet.dart';
import 'package:portfolio/view/main/widget/socialMedia.dart';

Widget welcomeItem(BuildContext context, GlobalKey homeKey) {
  return Row(
    key: homeKey,
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
                'I build modern, user-friendly mobile applications and create impactful designs that bring ideas to life. With expertise in Flutter and graphic design, I help businesses stand out with creative solutions. Let’s work together to turn your vision into reality — get in touch today!',
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
      Expanded(
        child: Column(
          children: [
            Image.asset(
              'assets/images/me.png',
              // height: 400,
              fit: BoxFit.cover,
            ),
            socialMedia(),
          ],
        ),
      ),
    ],
  );
}
